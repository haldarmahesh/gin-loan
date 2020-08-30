import 'package:contra_loan_app/domain/entities/loan_entity.dart';
import 'package:contra_loan_app/domain/repositories/loan_detail_repository.dart';
import 'package:flutter/material.dart';

class GetLoanDetailUseCase {
  final LoanDetailRepository loanDetailRepository;
  GetLoanDetailUseCase({@required this.loanDetailRepository})
      : assert(loanDetailRepository != null,
            'LoanDetailRepository cannot be null');
  Future<LoanEntity> result() {
    return this.loanDetailRepository.getLoanDetails();
  }
}
