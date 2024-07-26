import 'package:blog_app_clean/core/error/failure_error.dart';
import 'package:blog_app_clean/features/auth/data/data_source/auth_data_source.dart';
import 'package:blog_app_clean/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/error/server_error.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource dataSource;
  const AuthRepositoryImpl({required this.dataSource});
  @override
  Future<Either<FailureError, String>> signIn({required String email, required String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureError, String>> signUp({required String userName, required String email, required String password}) async {
    try {
      final String response = await dataSource.signUp(userName: userName, email: email, password: password);
      return right(response);
    } on ServerError catch (exception) {
      return left(
        FailureError(
          message: exception.message!,
        ),
      );
    } catch (uxExpected) {
      return left(
        const FailureError(),
      );
    }
  }
}
