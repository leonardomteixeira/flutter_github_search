import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_search/app/core/components/action/action_component.dart';
import 'package:github_search/app/modules/search/presenter/search/viewmodels/search_viewmodel.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final viewModel = SearchViewModel(Modular.get());

  @override
  initState() {
    viewModel.searchByText(viewModel.searchController.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Github Search'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: TextField(
              controller: viewModel.searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Search...',
              ),
            ),
          ),
          Observer(
            builder: (_) => ActionComponent(
              controller: viewModel.pageFlag,
              body: ListView.builder(
                  itemCount: viewModel.list.length,
                  itemBuilder: (_, id) {
                    return ListTile(
                      title: Text(viewModel.list[id].login),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
