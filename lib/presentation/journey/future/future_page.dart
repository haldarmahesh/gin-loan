import 'package:contra_loan_app/presentation/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';

class FutureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: AppBar(
        title: Text('Welcome to future'),
      ),
      body: Text('This is future page, please go back'),
    );
  }
}
