import 'package:contra_loan_app/presentation/widgets/base_scaffold.dart';
import 'package:contra_loan_app/presentation/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoanDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 250, 10, 10),
              child: TextField(
                // controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter phone number',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: MyButton.primary(
                onPress: () {},
                title: 'Login',
              ),
            )
          ],
        ),
      ),
    );
  }
}
