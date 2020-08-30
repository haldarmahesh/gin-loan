import 'package:contra_loan_app/domain/entities/loan_entity.dart';
import 'package:contra_loan_app/domain/repositories/loan_detail_repository.dart';

class LoanDetailRepositoryImpl implements LoanDetailRepository {
  LoanDetailRepositoryImpl();
  @override
  LoanEntity getLoanDetails() {
    // TODO: implement getLoanDetails
    return new LoanEntity();
  }
}
