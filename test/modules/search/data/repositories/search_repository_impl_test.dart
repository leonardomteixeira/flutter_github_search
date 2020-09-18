import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/app/modules/search/data/datasources/serach_datasource.dart';
import 'package:github_search/app/modules/search/data/models/result_search_model.dart';
import 'package:github_search/app/modules/search/data/repositories/search_repository_impl.dart';
import 'package:github_search/app/modules/search/domain/entities/result_search.dart';
import 'package:github_search/app/modules/search/domain/errors/errors.dart';
import 'package:mockito/mockito.dart';

class SearchDataSourceMock extends Mock implements SearchDataSource {}

main() {
  final dataSource = SearchDataSourceMock();
  final repository = SearchRepositoryImpl(dataSource);

  test('should return a list of ResultSearch', () async {
    when(dataSource.getSearch(any)).thenAnswer((_) async => <ResultSearchModel>[]);

    final result = await repository.search("Leonardo");

    expect(result | null, isA<List<ResultSearch>>());
  });

  test('should return a DataSourceError if datasource failed', () async {
    when(dataSource.getSearch(any)).thenThrow(Exception());

    final result = await repository.search("Leonardo");

    expect(result.isLeft(), true);
  });
}
