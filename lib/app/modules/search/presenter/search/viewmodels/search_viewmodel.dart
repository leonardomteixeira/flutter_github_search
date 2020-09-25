import 'package:flutter/cupertino.dart';
import 'package:github_search/app/core/enums/action_enum.dart';
import 'package:github_search/app/modules/search/domain/entities/result_search.dart';
import 'package:github_search/app/modules/search/domain/usecases/search_by_text.dart';
import 'package:mobx/mobx.dart';
part 'search_viewmodel.g.dart';

class SearchViewModel = _SearchViewModelBase with _$SearchViewModel;

abstract class _SearchViewModelBase with Store {
  final SearchByText usecase;
  final searchController = TextEditingController(text: "Leonardo");
  List<ResultSearch> list = <ResultSearch>[];

  @observable
  ActionEnum pageFlag = ActionEnum.onHold;

  _SearchViewModelBase(this.usecase);

  @action
  Future searchByText(String searchText) async {
    pageFlag = ActionEnum.onAction;

    final response = await usecase(searchText);
    list = response.getOrElse(() => <ResultSearch>[]);

    pageFlag = ActionEnum.onHold;
  }
}
