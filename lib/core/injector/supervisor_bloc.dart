import 'package:flutter_bloc/flutter_bloc.dart';

class SupervisorBloc extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print('Event ${event.runtimeType} of ${bloc.runtimeType}');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('Transition ${bloc.runtimeType}\n'
        'Current state: ${transition.currentState.runtimeType}\n'
        'Event: ${transition.event.runtimeType}\n'
        'Next state: ${transition.nextState.runtimeType}');
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print('${bloc.runtimeType} Errored' + error + stacktrace.toString());
  }
}
