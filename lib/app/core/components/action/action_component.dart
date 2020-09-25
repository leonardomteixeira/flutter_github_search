import 'package:flutter/material.dart';
import 'package:github_search/app/core/enums/action_enum.dart';

class ActionComponent extends StatelessWidget {
  final ActionEnum controller;
  final Widget body;

  ActionComponent({@required this.controller, @required this.body});

  @override
  Widget build(BuildContext context) {
    bool isLoad = controller == ActionEnum.onAction;

    return Expanded(
      child: Container(
        child: isLoad
            ? Center(
                child: CircularProgressIndicator(),
              )
            : body,
      ),
    );
  }
}
