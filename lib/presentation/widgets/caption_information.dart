import 'package:flutter/material.dart';
import 'package:contra_loan_app/presentation/theme/text.dart';

class CaptionInformation extends StatelessWidget {
  final title;
  final subtitle;
  CaptionInformation({@required this.title, @required this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          Text(
            title,
          ),
          Text(
            subtitle,
            style: blackBoldOverline,
          ),
        ],
      ),
    );
  }
}
