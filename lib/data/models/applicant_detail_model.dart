import 'package:contra_loan_app/domain/entities/applicant_details_entity.dart';

class ApplicantDetailModel extends ApplicantDetailsEntity {
  ApplicantDetailModel({
    String name,
    String dob,
    List<String> phoneNumer,
    String maritalStatus,
    int numberOfDependents,
  }) : super(
          name: name,
          dob: dob,
          phoneNumer: phoneNumer,
          maritalStatus: maritalStatus,
          numberOfDependents: numberOfDependents,
        );

  factory ApplicantDetailModel.fromJson(Map<dynamic, dynamic> jsonData) {
    return ApplicantDetailModel(
      name: jsonData["Name"],
      dob: jsonData["Date of Birth"],
      maritalStatus: jsonData["Marital Status"],
      phoneNumer: jsonData["Phone Number"],
      numberOfDependents: jsonData["No of Dependents"],
    );
  }
}
