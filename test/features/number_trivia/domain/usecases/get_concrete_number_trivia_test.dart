import 'package:clean_architecture_and_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_and_tdd/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_architecture_and_tdd/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  const tNumber = 1;
  const tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test(
    'should get number trivia from the repository',
    () async {
      when(mockNumberTriviaRepository.getConcreteNumberTrivia(1))
          .thenAnswer((_) async => const Right(tNumberTrivia));

      final result = await usecase(number: tNumber);

      expect(result, const Right(tNumberTrivia));
      verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
