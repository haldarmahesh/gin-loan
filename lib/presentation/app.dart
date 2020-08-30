import 'package:contra_loan_app/presentation/route_list.dart';
import 'package:contra_loan_app/presentation/routes.dart';
import 'package:contra_loan_app/presentation/theme/theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common_bloc/navigator/navigator_bloc.dart';

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigatorBloc>(
      create: (context) {
        return NavigatorBloc(navigatorKey: _navigatorKey);
      },
      child: MaterialApp(
        navigatorKey: _navigatorKey,
        title: 'Flutter Demo',
        theme: appTheme(context),
        initialRoute: RouteList.getStarted,
        routes: Routes.getAll(),
        // home: WelcomeScreen(),
      ),
    );
  }
}
