import 'package:contra_loan_app/presentation/theme/text.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

// These are sample values can be changed to have a more generic data.
// We are going to extend the theme for the relevant pages

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    // fontFamily: 'TTCommons',
    primaryColor: AppColor.primaryColor,
    textTheme: getDefaultTextTheme(),

    buttonTheme: ButtonThemeData(
      //update and enhance in screens where necessary
      buttonColor: AppColor.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
