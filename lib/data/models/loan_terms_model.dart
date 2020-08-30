import 'package:contra_loan_app/domain/entities/loan_terms_entity.dart';

class LoanTermsModel extends LoanTermsEntity {
  LoanTermsModel({
    String duration,
    String interestRate,
    int loanAmount,
    String loanProduct,
  }) : super(
          duration: duration,
          interestRate: interestRate,
          loanAmount: loanAmount,
          loanProduct: loanProduct,
        );

  factory LoanTermsModel.fromJson(Map<dynamic, dynamic> jsonData) {
    return LoanTermsModel(
      duration: jsonData["Duration"],
      interestRate: jsonData["Interest Rate"],
      loanAmount: jsonData["Loan Amount"],
      loanProduct: jsonData["Loan Product"],
    );
  }
}
