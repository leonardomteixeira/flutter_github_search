import 'dart:convert';

import 'package:github_search/app/modules/search/domain/entities/result_search.dart';

class ResultSearchModel extends ResultSearch {
  final String login;
  final String avatarUrl;
  ResultSearchModel({
    this.login,
    this.avatarUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'avatar_url': avatarUrl,
    };
  }

  factory ResultSearchModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ResultSearchModel(
      login: map['login'],
      avatarUrl: map['avatar_url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultSearchModel.fromJson(String source) => ResultSearchModel.fromMap(json.decode(source));
}
