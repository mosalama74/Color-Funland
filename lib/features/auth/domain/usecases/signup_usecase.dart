import 'package:color_funland/core/error/failures.dart';
import 'package:color_funland/core/usecases/usecase.dart';
import 'package:color_funland/features/auth/domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';
import '../entities/user.dart';

class SignUpParams {
  final String firstName;
  final String lastName;
  final String email;
  final String username;
  final String password;

  SignUpParams({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.username,
    required this.password,
  });
}

class SignUpUseCase implements UseCase<User, SignUpParams> {
  final AuthRepository repository;

  SignUpUseCase(this.repository);

  @override
  Future<Either<Failure, User>> call(SignUpParams params) async {
    return await repository.signUp(
      firstName: params.firstName,
      lastName: params.lastName,
      email: params.email,
      username: params.username,
      password: params.password,
    );
  }
}