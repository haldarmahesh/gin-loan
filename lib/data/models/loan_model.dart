import 'package:contra_loan_app/data/models/applicant_detail_model.dart';
import 'package:contra_loan_app/data/models/image_model.dart';
import 'package:contra_loan_app/data/models/loan_terms_model.dart';
import 'package:contra_loan_app/data/models/location_model.dart';
import 'package:contra_loan_app/data/models/schedule_model.dart';
import 'package:contra_loan_app/domain/entities/loan_entity.dart';
import 'package:flutter/material.dart';

class LoanModel extends LoanEntity {
  LoanModel({
    @required String type,
    @required String title,
    @required ImageModel imageModel,
    @required LocationModel borrowerLocationModel,
    @required ApplicantDetailModel applicantDetailModel,
    @required LoanTermsModel loanTermsModel,
    @required List<ScheduleModel> repaymentScheduleModel,
  }) : super(
          type: type,
          title: title,
          image: imageModel,
          borrowerLocation: borrowerLocationModel,
          applicantDetails: applicantDetailModel,
          loanTerms: loanTermsModel,
          repaymentSchedule: repaymentScheduleModel,
        );
  factory LoanModel.fromJson(Map<dynamic, dynamic> jsonData) {
    if (jsonData == null || jsonData.isEmpty) {
      throw Exception("The data is not defined");
    }
    Map<dynamic, dynamic> loanData = jsonData["loan1"];
    List<ScheduleModel> listRepaymentSchedules =
        (loanData["Repayment Schedule"] as List).map((item) {
      return ScheduleModel.fromJson(item);
    }).toList();
    return LoanModel(
      type: loanData["type"],
      title: loanData["title"],
      imageModel: ImageModel.fromJson(loanData["image"]),
      borrowerLocationModel:
          LocationModel.fromJson(loanData["Borrower Location"]),
      applicantDetailModel:
          ApplicantDetailModel.fromJson(loanData["Applicant Details"]),
      loanTermsModel: LoanTermsModel.fromJson(loanData["Loan Terms"]),
      repaymentScheduleModel: listRepaymentSchedules,
    );
  }
}
