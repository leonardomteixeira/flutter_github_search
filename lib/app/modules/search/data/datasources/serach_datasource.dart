import 'package:github_search/app/modules/search/data/models/result_search_model.dart';

abstract class SearchDataSource {
  Future<List<ResultSearchModel>> getSearch(String serachText);
}
