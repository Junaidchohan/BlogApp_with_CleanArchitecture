import 'package:blog_app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

// this is a interface for usecase
abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failures, SuccessType>> call(Params params);
}

class Noparams {}
