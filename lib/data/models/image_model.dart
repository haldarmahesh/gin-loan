import 'package:contra_loan_app/domain/entities/image_entity,.dart';

class ImageModel extends ImageEntity {
  ImageModel({
    String url,
    String label,
  }) : super(
          url: url,
          label: label,
        );

  factory ImageModel.fromJson(Map<dynamic, dynamic> jsonData) {
    return ImageModel(
      url: jsonData["url"],
      label: jsonData["label"],
    );
  }
}
