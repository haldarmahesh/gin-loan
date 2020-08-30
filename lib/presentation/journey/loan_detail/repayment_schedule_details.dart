import 'package:contra_loan_app/domain/entities/schedule_entiry.dart';
import 'package:contra_loan_app/presentation/common_bloc/navigator/navigator_event.dart';
import 'package:contra_loan_app/presentation/widgets/caption_information.dart';
import 'package:contra_loan_app/presentation/widgets/card_details.dart';
import 'package:flutter/material.dart';

class RepaymentScheduleDetails extends StatelessWidget {
  final List<ScheduleEntity> repaymentSchedule;
  RepaymentScheduleDetails({this.repaymentSchedule});
  @override
  Widget build(BuildContext context) {
    return CardDetails(
      title: 'Repayment Schedule',
      listOfRowsDetails: [
        [
          CaptionInformation(
            title: 'Date',
            subtitle: repaymentSchedule[0].date,
          ),
          CaptionInformation(
            title: 'Amount',
            subtitle: repaymentSchedule[0].amount.toString(),
          )
        ],
      ],
      hyperlinkTitle: 'See full schedule',
      navigatorEvent: NavigateToFutureEvent(),
    );
  }
}
