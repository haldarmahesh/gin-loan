import 'package:contra_loan_app/core/network/mock_http_client.dart';
import 'package:contra_loan_app/data/datasources/loan_remote_datasource.dart';
import 'package:contra_loan_app/data/models/loan_model.dart';
import 'package:contra_loan_app/domain/entities/loan_entity.dart';
import 'package:contra_loan_app/domain/repositories/loan_detail_repository.dart';
import 'package:flutter/material.dart';

class LoanDetailRepositoryImpl implements LoanDetailRepository {
  final LoanRemoteDatasource loanRemoteDatasource;
  LoanDetailRepositoryImpl({@required this.loanRemoteDatasource});
  @override
  Future<LoanEntity> getLoanDetails() {
    Future<LoanModel> loanData = this.loanRemoteDatasource.getLoanDetail();
    return loanData;
  }
}
