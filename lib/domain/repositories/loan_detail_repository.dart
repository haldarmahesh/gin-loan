import 'package:contra_loan_app/domain/entities/loan_entity.dart';

abstract class LoanDetailRepository {
  Future<LoanEntity> getLoanDetails();
}
