abstract class LoanDetailEvent {}

class FetchLoanDetailsRequestEvent extends LoanDetailEvent {}

// class FetchLoanDetailsLoaderOnEvent extends LoanDetailEvent {}

// class FetchLoanDetailsLoaderOffEvent extends LoanDetailEvent {}

class FetchLoanDetailsSuccessEvent extends LoanDetailEvent {}

class FetchLoanDetailsFailureEvent extends LoanDetailEvent {}
