class LoanTermsEntity {
  // TODO(mahesh): cross verify all the types
  String duration;
  String interestRate;
  int loanAmount;
  String loanProduct;
  LoanTermsEntity({
    this.duration,
    this.interestRate,
    this.loanAmount,
    this.loanProduct,
  });
}
