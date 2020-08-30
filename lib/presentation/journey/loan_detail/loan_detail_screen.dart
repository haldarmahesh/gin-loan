import 'package:contra_loan_app/core/network/mock_http_client.dart';
import 'package:contra_loan_app/data/datasources/loan_remote_datasource.dart';
import 'package:contra_loan_app/data/models/loan_model.dart';
import 'package:contra_loan_app/data/repositories/loan_detail_repository_impl.dart';
import 'package:contra_loan_app/domain/entities/loan_entity.dart';

import 'package:contra_loan_app/domain/usecases/get_loan_detail_usecase.dart';
import 'package:contra_loan_app/presentation/journey/loan_detail/application_details_widget.dart';
import 'package:contra_loan_app/presentation/journey/loan_detail/bloc/loan_detail_bloc.dart';
import 'package:contra_loan_app/presentation/journey/loan_detail/bloc/loan_detail_event.dart';
import 'package:contra_loan_app/presentation/journey/loan_detail/bloc/loan_detail_state.dart';
import 'package:contra_loan_app/presentation/journey/loan_detail/loan.dart';
import 'package:contra_loan_app/presentation/journey/loan_detail/repayment_schedule_details.dart';
import 'package:contra_loan_app/presentation/widgets/base_scaffold.dart';
import 'package:contra_loan_app/presentation/widgets/collapsible_image_with_info.dart';
import 'package:contra_loan_app/presentation/widgets/title_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// @immutable
// ignore: must_be_immutable
class LoanDetailScreen extends StatelessWidget {
  MockHttpClient<LoanModel> mockHttpClient;
  LoanRemoteDatasource loanRemoteDatasource;
  GetLoanDetailUseCase getLoanDetailUseCase;
  LoanDetailRepositoryImpl loanDetailRepositoryImpl;

  LoanDetailBloc loanDetailBloc;

  LoanDetailScreen() {
    mockHttpClient = new MockHttpClient();
    loanRemoteDatasource = new LoanRemoteDatasource(
      mockHttpClient: mockHttpClient,
    );
    loanDetailRepositoryImpl = new LoanDetailRepositoryImpl(
      loanRemoteDatasource: loanRemoteDatasource,
    );
    getLoanDetailUseCase = new GetLoanDetailUseCase(
      loanDetailRepository: loanDetailRepositoryImpl,
    );

    loanDetailBloc =
        new LoanDetailBloc(getLoanDetailUseCase: getLoanDetailUseCase)
          ..add(FetchLoanDetailsRequestEvent());
  }
  Widget loader() {
    return Center(
        child: Container(
      child: Text(
        'Loding....',
      ),
    ));
  }

  Widget renderList(LoanEntity loanEntity) {
    return CustomScrollView(
      slivers: <Widget>[
        TitleAppBar(
          title: loanEntity.title,
        ),
        CollabsibleImageWithInfo(
          imageUrl: loanEntity.image.url,
          title: loanEntity.image.label,
          subtitle: loanEntity.borrowerLocation.address,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              child: Column(
                children: <Widget>[
                  ApplicationDetailsWidget(
                    applicantDetailsEntity: loanEntity.applicantDetails,
                  ),
                  LoanTermsDetailsWidget(
                    loanTerms: loanEntity.loanTerms,
                  ),
                  RepaymentScheduleDetails(
                    repaymentSchedule: loanEntity.repaymentSchedule,
                  )
                ],
              ),
            );
          }, childCount: 1),
        )
      ],
    );
  }

  String getTitle(LoanEntity loanEntity) {
    return loanEntity.title ?? 'Loading..';
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoanDetailBloc, LoanDetailState>(
        bloc: loanDetailBloc,
        builder: (context, state) {
          return BaseScaffold(
            body: state.runtimeType == LoanDetailLoadedState
                ? renderList(state.loanEntity)
                : loader(),
          );
        });
  }
}
