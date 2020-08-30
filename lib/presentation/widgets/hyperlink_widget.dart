import 'package:contra_loan_app/presentation/common_bloc/navigator/navigator_event.dart';
import 'package:flutter/material.dart';
import 'package:contra_loan_app/presentation/theme/text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:contra_loan_app/presentation/common_bloc/navigator/navigator_bloc.dart';

class HyperLinkWidget extends StatelessWidget {
  final String title;
  final NavigatorEvent navigateEvent;
  HyperLinkWidget({this.title, this.navigateEvent});
  @override
  Widget build(BuildContext context) {
    if (title == null) return Container();
    return GestureDetector(
      onTap: () {
        BlocProvider.of<NavigatorBloc>(context).add(navigateEvent);
      },
      child: Text(
        title.toUpperCase(),
        style: highlightLinkOverline,
      ),
    );
  }
}
