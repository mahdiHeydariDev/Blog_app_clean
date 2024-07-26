import 'package:blog_app_clean/core/error/failure_error.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<FailureError, SuccessType>> call(Params params);
}
