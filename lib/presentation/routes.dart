import 'package:contra_loan_app/presentation/journey/loan_detail/loan_detail_screen.dart';
import 'package:contra_loan_app/presentation/journey/welcome/welcome_screen.dart';
import 'package:contra_loan_app/presentation/route_list.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, WidgetBuilder> getAll() => _getCombinedRoutes();

  static Map<String, WidgetBuilder> _getCombinedRoutes() {
    return {
      RouteList.getStarted: (context) => WelcomeScreen(),
      RouteList.loanDetail: (context) => LoanDetailScreen()
    };
  }
}
