import 'package:contra_loan_app/presentation/theme/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends RaisedButton {
  final Function onPress;
  final String title;
  MyButton.primary({
    this.onPress,
    this.title,
  }) : super(
          onPressed: onPress,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text(title),
          ),
          color: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          disabledColor: Colors.grey[100],
        );
}
