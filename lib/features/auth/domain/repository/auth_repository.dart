import 'package:blog_app_clean/core/error/failure_error.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<FailureError, String>> signUp({required String userName, required String email, required String password});
  Future<Either<FailureError, String>> signIn({required String email, required String password});
}
