import 'package:contra_loan_app/presentation/common_bloc/navigator/navigator_event.dart';
import 'package:contra_loan_app/presentation/route_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigatorBloc extends Bloc<NavigatorEvent, dynamic> {
  final GlobalKey<NavigatorState> navigatorKey;

  NavigatorBloc({initialState, this.navigatorKey}) : super();

  @override
  Stream mapEventToState(NavigatorEvent event) async* {
    if (event is NavigateToLoanDetailEvent) {
      navigatorKey.currentState.pushNamed(RouteList.loanDetail);
    } else if (event is NavigateToFutureEvent) {
      navigatorKey.currentState.pushNamed(RouteList.futurePage);
    } else {
      navigatorKey.currentState.pushNamed(RouteList.getStarted);
    }
  }

  @override
  get initialState => null;
}
