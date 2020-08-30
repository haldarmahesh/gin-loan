import 'package:contra_loan_app/domain/entities/loan_entity.dart';
import 'package:contra_loan_app/domain/usecases/get_loan_detail_usecase.dart';
import 'package:contra_loan_app/presentation/journey/loan_detail/bloc/loan_detail_event.dart';
import 'package:contra_loan_app/presentation/journey/loan_detail/bloc/loan_detail_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoanDetailBloc extends Bloc<LoanDetailEvent, LoanDetailState> {
  final GetLoanDetailUseCase getLoanDetailUseCase;
  LoanDetailBloc({@required this.getLoanDetailUseCase})
      : assert(getLoanDetailUseCase != null, 'GetLoanUseCase cannot be null');

  @override
  LoanDetailState get initialState => LoanDetailLoadingState();

  @override
  Stream<LoanDetailState> mapEventToState(LoanDetailEvent event) async* {
    switch (event.runtimeType) {
      case FetchLoanDetailsRequestEvent:
        yield LoanDetailLoadingState();
        try {
          LoanEntity loanEntity = await this.getLoanDetailUseCase.result();
          yield LoanDetailLoadedState(loanEntity: loanEntity);
        } catch (err) {
          yield LoanDetailFailedState();
        }
        break;
    }
  }
}
