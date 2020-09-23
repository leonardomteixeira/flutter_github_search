import 'package:dio/dio.dart';
import 'package:github_search/app/modules/search/data/repositories/search_repository_impl.dart';
import 'package:github_search/app/modules/search/domain/usecases/search_by_text.dart';
import 'package:github_search/app/modules/search/external/datasources/github_datasource.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:github_search/app/app_widget.dart';
import 'package:github_search/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind((i) => Dio()),
        Bind((i) => SearchByTextImpl(i())),
        Bind((i) => SearchRepositoryImpl(i())),
        Bind((i) => GithubDatasource(i())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
