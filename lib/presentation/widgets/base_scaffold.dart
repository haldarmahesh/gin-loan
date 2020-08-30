import 'package:flutter/material.dart';

class BaseScaffold extends Scaffold {
  final body;
  BaseScaffold({@required this.body}) : super(body: _wrapBody(body));
}

Widget _wrapBody(Widget body) {
  return Padding(
    padding: EdgeInsets.all(16),
    child: body,
  );
}
