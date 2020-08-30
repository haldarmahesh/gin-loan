import 'package:contra_loan_app/domain/entities/applicant_details_entity.dart';
import 'package:contra_loan_app/presentation/common_bloc/navigator/navigator_event.dart';
import 'package:contra_loan_app/presentation/widgets/caption_information.dart';
import 'package:contra_loan_app/presentation/widgets/card_details.dart';
import 'package:flutter/material.dart';

class ApplicationDetailsWidget extends StatelessWidget {
  final ApplicantDetailsEntity applicantDetailsEntity;
  ApplicationDetailsWidget({this.applicantDetailsEntity});
  @override
  Widget build(BuildContext context) {
    return CardDetails(
      title: 'Application details',
      listOfRowsDetails: [
        [
          CaptionInformation(
            title: 'Name',
            subtitle: applicantDetailsEntity.name,
          )
        ],
        [
          CaptionInformation(
            title: 'Date of Birth',
            subtitle: applicantDetailsEntity.dob,
          ),
          CaptionInformation(
            title: 'Phonenumber',
            subtitle: applicantDetailsEntity.phoneNumer.join(','),
          ),
        ]
      ],
      hyperlinkTitle: 'See more',
      navigatorEvent: NavigateToFutureEvent(),
    );
  }
}
