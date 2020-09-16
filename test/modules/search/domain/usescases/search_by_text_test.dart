import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/app/modules/search/domain/entities/result_search.dart';
import 'package:github_search/app/modules/search/domain/repositories/search_repository.dart';
import 'package:github_search/app/modules/search/domain/usecases/search_by_text.dart';
import 'package:mockito/mockito.dart';

class SearchRepositoryMock extends Mock implements SearchRepository {}

main() {
  final repository = SearchRepositoryMock();
  final usecase = SearchByTextImpl(repository);

  test('should return a list of ResultSearch', () async {
    when(repository.search(any)).thenAnswer((_) async => Right(<ResultSearch>[]));

    final result = await usecase('Leonardo');

    expect(result, isA<Right>());
    expect(result | null, isA<List<ResultSearch>>());
  });

  test('should return a excetion when text are invalid', () async {
    when(repository.search(any)).thenAnswer((_) async => Right(<ResultSearch>[]));

    var result = await usecase(null);
    expect(result.isLeft(), true);

    result = await usecase('');
    expect(result.isLeft(), true);
  });
}
