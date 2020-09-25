// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchViewModel on _SearchViewModelBase, Store {
  final _$pageFlagAtom = Atom(name: '_SearchViewModelBase.pageFlag');

  @override
  ActionEnum get pageFlag {
    _$pageFlagAtom.reportRead();
    return super.pageFlag;
  }

  @override
  set pageFlag(ActionEnum value) {
    _$pageFlagAtom.reportWrite(value, super.pageFlag, () {
      super.pageFlag = value;
    });
  }

  final _$searchByTextAsyncAction =
      AsyncAction('_SearchViewModelBase.searchByText');

  @override
  Future<dynamic> searchByText(String searchText) {
    return _$searchByTextAsyncAction.run(() => super.searchByText(searchText));
  }

  @override
  String toString() {
    return '''
pageFlag: ${pageFlag}
    ''';
  }
}
