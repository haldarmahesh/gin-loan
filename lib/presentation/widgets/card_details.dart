import 'package:contra_loan_app/presentation/common_bloc/navigator/navigator_event.dart';
import 'package:contra_loan_app/presentation/theme/borders.dart';
import 'package:contra_loan_app/presentation/widgets/caption_information.dart';
import 'package:contra_loan_app/presentation/widgets/hyperlink_widget.dart';
import 'package:flutter/material.dart';
import 'package:contra_loan_app/presentation/theme/text.dart';

class CardDetails extends StatelessWidget {
  final String title;
  final List<List<CaptionInformation>> listOfRowsDetails;
  final String hyperlinkTitle;
  final NavigatorEvent navigatorEvent;
  CardDetails(
      {@required this.title,
      this.listOfRowsDetails,
      this.hyperlinkTitle,
      this.navigatorEvent});
  @override
  Widget build(BuildContext context) {
    var listWidgets = listOfRowsDetails
        .map(
          (item) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: item,
          ),
        )
        .toList();
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: solidContainerBorder,
        child: Column(
          children: <Widget>[
            ListTile(
              dense: false,
              title: Container(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  title,
                  style: display2BoldOverline,
                ),
              ),
              subtitle: Column(
                children: listWidgets,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: HyperLinkWidget(
                title: this.hyperlinkTitle,
                navigateEvent: this.navigatorEvent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
