import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_search/app/modules/search/presenter/search/views/search_page.dart';

class SearchModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => SearchPage()),
      ];

  static Inject get to => Inject<SearchModule>.of();
}
