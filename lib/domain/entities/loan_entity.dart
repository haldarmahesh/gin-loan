import 'package:contra_loan_app/domain/entities/applicant_details_entity.dart';
import 'package:contra_loan_app/domain/entities/image_entity,.dart';
import 'package:contra_loan_app/domain/entities/loan_terms_entity.dart';
import 'package:contra_loan_app/domain/entities/location_entity.dart';
import 'package:contra_loan_app/domain/entities/schedule_entiry.dart';
import 'package:flutter/material.dart';

class LoanEntity {
  String type;
  String title;
  ImageEntity image;
  LocationEntity borrowerLocation;
  ApplicantDetailsEntity applicantDetails;
  LoanTermsEntity loanTerms;
  List<ScheduleEntity> repaymentSchedule;

  LoanEntity({
    @required this.type,
    @required this.title,
    @required this.image,
    @required this.borrowerLocation,
    @required this.applicantDetails,
    @required this.loanTerms,
    @required this.repaymentSchedule,
  });
}
