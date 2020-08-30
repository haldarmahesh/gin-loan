import 'package:contra_loan_app/domain/entities/loan_terms_entity.dart';
import 'package:contra_loan_app/presentation/widgets/caption_information.dart';
import 'package:contra_loan_app/presentation/widgets/card_details.dart';
import 'package:flutter/material.dart';

class LoanTermsDetailsWidget extends StatelessWidget {
  final LoanTermsEntity loanTerms;
  LoanTermsDetailsWidget({this.loanTerms});
  @override
  Widget build(BuildContext context) {
    return CardDetails(
      title: 'Loan Terms',
      listOfRowsDetails: [
        [
          CaptionInformation(
            title: 'Duration',
            subtitle: loanTerms.duration,
          ),
          CaptionInformation(
            title: 'Interest Rate',
            subtitle: loanTerms.interestRate,
          )
        ],
        [
          CaptionInformation(
            title: 'Loan Amount',
            subtitle: loanTerms.loanAmount.toString(),
          ),
          CaptionInformation(
            title: 'Loan Product',
            subtitle: loanTerms.loanProduct,
          ),
        ]
      ],
    );
  }
}
