import 'package:contra_loan_app/domain/entities/loan_entity.dart';

abstract class LoanDetailState {
  LoanEntity loanEntity;
  LoanDetailState({this.loanEntity});
}

class LoanDetailLoadingState extends LoanDetailState {
  LoanDetailLoadingState() : super(loanEntity: null);
}

class LoanDetailLoadedState extends LoanDetailState {
  LoanEntity loanEntity;
  LoanDetailLoadedState({
    this.loanEntity,
  }) : super(
          loanEntity: loanEntity,
        );
}

class LoanDetailFailedState extends LoanDetailState {
  LoanDetailFailedState() : super(loanEntity: null);
}
