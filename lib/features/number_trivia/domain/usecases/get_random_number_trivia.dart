import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomNumberTrivia extends Usecase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  /// Usecase should always have a call method.
  @override
  Future<Either<Failure, NumberTrivia>?> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
