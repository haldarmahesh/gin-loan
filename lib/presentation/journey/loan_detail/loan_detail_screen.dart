import 'package:contra_loan_app/core/network/mock_http_client.dart';
import 'package:contra_loan_app/data/datasources/loan_remote_datasource.dart';
import 'package:contra_loan_app/data/models/loan_model.dart';
import 'package:contra_loan_app/presentation/widgets/base_scaffold.dart';
import 'package:contra_loan_app/presentation/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoanDetailScreen extends StatelessWidget {
  void printData(LoanRemoteDatasource data) async {
    var result = await data.getLoanDetail();
    print(result.title);
  }

  @override
  Widget build(BuildContext context) {
    MockHttpClient<LoanModel> mockHttpClient = new MockHttpClient();
    LoanRemoteDatasource loanRemoteDatasource =
        new LoanRemoteDatasource(mockHttpClient: mockHttpClient);
    printData(loanRemoteDatasource);
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
