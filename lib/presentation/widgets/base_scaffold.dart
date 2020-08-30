import 'package:flutter/material.dart';

class BaseScaffold extends Scaffold {
  final body;
  final appBar;
  BaseScaffold({
    @required this.body,
    this.appBar,
  }) : super(body: _wrapBody(body), appBar: appBar);
}

Widget _wrapBody(Widget body) {
  return Padding(
    padding: EdgeInsets.all(16),
    child: body,
  );
}
