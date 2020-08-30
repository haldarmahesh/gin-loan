import 'package:contra_loan_app/domain/entities/schedule_entiry.dart';

class ScheduleModel extends ScheduleEntity {
  ScheduleModel({
    String date,
    int amount,
  }) : super(
          date: date,
          amount: amount,
        );

  factory ScheduleModel.fromJson(Map<dynamic, dynamic> jsonData) {
    return ScheduleModel(
      amount: jsonData["Amount"],
      date: jsonData["Date"],
    );
  }
}
