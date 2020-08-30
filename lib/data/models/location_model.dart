import 'package:contra_loan_app/domain/entities/location_entity.dart';

class LocationModel extends LocationEntity {
  LocationModel({
    double lat,
    double lng,
    String address,
  }) : super(
          address: address,
          lat: lat,
          lng: lng,
        );

  factory LocationModel.fromJson(Map<dynamic, dynamic> jsonData) {
    return LocationModel(
      lat: jsonData["lat"],
      lng: jsonData["lng"],
      address: jsonData["address"],
    );
  }
}
