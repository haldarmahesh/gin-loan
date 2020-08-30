import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:contra_loan_app/presentation/common_bloc/navigator/navigator_event.dart';
import 'package:contra_loan_app/presentation/widgets/my_button.dart';
import 'package:contra_loan_app/presentation/common_bloc/navigator/navigator_bloc.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: <Widget>[
              Container(color: Colors.grey[100]),
              Container(color: Colors.grey[200]),
              Container(color: Colors.grey[10]),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: _getStartedButton(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getStartedButton(BuildContext context) {
    return ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        child: MyButton.primary(
            onPress: () {
              BlocProvider.of<NavigatorBloc>(context)
                  .add(NavigateToLoanDetailEvent());
            },
            title: 'Get Started')
        // RaisedButton(
        //   onPressed: () {},
        //   textColor: Colors.white,
        //   color: Theme.of(context).primaryColor,
        //   child: Text('Get Started'),
        // ),
        );
  }
}
