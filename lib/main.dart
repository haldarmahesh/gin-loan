import 'package:contra_loan_app/core/injector/supervisor_bloc.dart';
import 'package:contra_loan_app/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocSupervisor.delegate = SupervisorBloc();
  runApp(App());
}
