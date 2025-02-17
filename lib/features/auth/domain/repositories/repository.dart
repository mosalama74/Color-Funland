import 'package:color_funland/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import '../entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, Unit>> signIn(String email, String password);
  Future<Either<Failure, User>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String username,
    required String password,
  });
  Future<Either<Failure, void>> signOut();
  Future<Either<Failure, User?>> getCurrentUser();}