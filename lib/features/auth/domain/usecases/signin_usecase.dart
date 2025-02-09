import 'package:color_funland/core/error/failures.dart';
import 'package:color_funland/core/usecases/usecase.dart';
import 'package:color_funland/features/auth/domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';

class SignInParams {
  final String email;
  final String password;

  SignInParams({required this.email, required this.password});
}


class SignInUseCase implements UseCase<Unit, SignInParams> {
  final AuthRepository repository;

  SignInUseCase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(SignInParams params) async {
    return await repository.signIn(params.email, params.password);
  }


}