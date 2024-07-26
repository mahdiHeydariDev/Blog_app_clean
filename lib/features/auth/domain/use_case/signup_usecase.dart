import 'package:blog_app_clean/core/error/failure_error.dart';
import 'package:blog_app_clean/core/utils/usecase.dart';
import 'package:blog_app_clean/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/src/either.dart';

class SignUpUsecase implements UseCase<String, SignUpParams> {
  final AuthRepository repository;
  const SignUpUsecase({required this.repository});
  @override
  Future<Either<FailureError, String>> call(SignUpParams params) async {
    return await repository.signUp(
      userName: params.username,
      email: params.email,
      password: params.password,
    );
  }
}

class SignUpParams {
  final String username;
  final String email;
  final String password;
  const SignUpParams({
    required this.username,
    required this.email,
    required this.password,
  });
}
