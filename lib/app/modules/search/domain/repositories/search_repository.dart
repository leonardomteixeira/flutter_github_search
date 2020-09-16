import 'package:dartz/dartz.dart';
import 'package:github_search/app/modules/search/domain/entities/result_search.dart';
import 'package:github_search/app/modules/search/domain/errors/errors.dart';

abstract class SearchRepository {
  Future<Either<FailureSerach, List<ResultSearch>>> search(String searchText);
}
