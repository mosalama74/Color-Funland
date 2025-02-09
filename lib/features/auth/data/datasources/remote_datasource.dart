import 'package:color_funland/core/error/failures.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, Unit>> signIn(String email, String password);
  Future<UserModel> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String username,
    required String password,
  });
  Future<void> signOut();
  Future<UserModel?> getCurrentUser();
  Future<void> saveUserData({
    required String uid,
    required Map<String, dynamic> data,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  AuthRemoteDataSourceImpl({
    required firebase_auth.FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
  })  : _firebaseAuth = firebaseAuth,
        _firestore = firestore;

  @override
  Future<Either<Failure, Unit>> signIn(String email, String password) async {
    try {
      // Sign in with Firebase Auth
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user == null) {
        return Left(AuthFailure('Login failed: User not found'));
      }

      // Get additional user data from Firestore
      final userDoc = await _firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .get();

      if (!userDoc.exists) {
        // Create basic user data if it doesn't exist
        final userData = {
          'email': email,
          'uid': userCredential.user!.uid,
          'createdAt': DateTime.now().toIso8601String(),
        };
        
        await _firestore
            .collection('users')
            .doc(userCredential.user!.uid)
            .set(userData, SetOptions(merge: true));
      }

      return const Right(unit);
      
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Left(_handleFirebaseAuthError(e));
    } catch (e) {
      return Left(AuthFailure('Login failed: ${e.toString()}'));
    }
  }

  @override
  Future<UserModel> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String username,
    required String password,
  }) async {
    try {
      // Check if username already exists
      final usernameQuery = await _firestore
          .collection('users')
          .where('username', isEqualTo: username)
          .get();

      if (usernameQuery.docs.isNotEmpty) {
        throw Exception('Username is already taken');
      }

      // Create user with Firebase Auth
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user == null) {
        throw Exception('Sign up failed: User creation failed');
      }

      // Create user model
      final user = UserModel(
        uid: userCredential.user!.uid,
        firstName: firstName,
        lastName: lastName,
        email: email,
        username: username,
        createdAt: DateTime.now(),
      );

      // Save user data to Firestore
      await _firestore
          .collection('users')
          .doc(user.uid)
          .set(user.toJson(), SetOptions(merge: true));

      return user;
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw _handleFirebaseAuthError(e);
    } catch (e) {
      throw Exception('Sign up failed: ${e.toString()}');
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception('Sign out failed: ${e.toString()}');
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;
      
      if (firebaseUser == null) {
        return null;
      }

      final userDoc = await _firestore
          .collection('users')
          .doc(firebaseUser.uid)
          .get();

      if (!userDoc.exists) {
        return null;
      }

      return UserModel.fromJson({
        'uid': firebaseUser.uid,
        ...userDoc.data() ?? {},
      });
    } catch (e) {
      throw Exception('Get current user failed: ${e.toString()}');
    }
  }

  @override
  Future<void> saveUserData({
    required String uid,
    required Map<String, dynamic> data,
  }) async {
    try {
      await _firestore
          .collection('users')
          .doc(uid)
          .set(data, SetOptions(merge: true));
    } catch (e) {
      throw Exception('Save user data failed: ${e.toString()}');
    }
  }

  Failure _handleFirebaseAuthError(firebase_auth.FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return AuthFailure('No user found with this email');
      case 'wrong-password':
        return AuthFailure('Wrong password');
      case 'email-already-in-use':
        return AuthFailure('Email is already registered');
      case 'weak-password':
        return AuthFailure('Password is too weak');
      case 'invalid-email':
        return AuthFailure('Invalid email address');
      case 'operation-not-allowed':
        return AuthFailure('Operation not allowed');
      case 'user-disabled':
        return AuthFailure('User has been disabled');
      default:
        return AuthFailure(e.message ?? 'Authentication failed');
    }
  }
}