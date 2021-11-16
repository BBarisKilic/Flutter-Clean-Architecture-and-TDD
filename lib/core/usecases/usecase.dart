import 'package:clean_architecture_and_tdd/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>?> call(Params params);
}
