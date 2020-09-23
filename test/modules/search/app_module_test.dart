import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/app/app_module.dart';
import 'package:github_search/app/modules/search/domain/usecases/search_by_text.dart';

main() {
  initModule(AppModule());

  test('Shloud rocover a usecase with no error', () {
    final usecase = Modular.get<SearchByText>();
    expect(usecase, isA<SearchByText>());
  });
}
