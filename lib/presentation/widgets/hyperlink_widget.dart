import 'package:flutter/material.dart';
import 'package:contra_loan_app/presentation/theme/text.dart';

class HyperLinkWidget extends StatelessWidget {
  final String title;
  final String routeTo;
  HyperLinkWidget({this.title, this.routeTo});
  @override
  Widget build(BuildContext context) {
    if (title == null) return Container();
    return Text(
      title.toUpperCase(),
      style: highlightLinkOverline,
    );
  }
}
