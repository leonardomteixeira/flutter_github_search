import 'package:dio/dio.dart';
import 'package:github_search/app/modules/search/data/datasources/serach_datasource.dart';
import 'package:github_search/app/modules/search/data/models/result_search_model.dart';
import 'package:github_search/app/modules/search/domain/errors/errors.dart';

extension on String {
  normalize() {
    return this.replaceAll(' ', "+");
  }
}

class GithubDatasource implements SearchDataSource {
  final Dio dio;

  GithubDatasource(
    this.dio,
  );

  @override
  Future<List<ResultSearchModel>> getSearch(String serachText) async {
    final response = await dio.get('https://api.github.com/search/users?q=${serachText.toString().normalize()}');

    if (response.statusCode == 200) {
      final list = (response.data['items'] as List).map((e) => ResultSearchModel.fromMap(e)).toList();
      return list;
    } else {
      throw DataSourceError();
    }
  }
}
