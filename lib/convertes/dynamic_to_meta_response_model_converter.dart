import 'package:flutter_application_1/models/common/meta_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DynamicToMetaResponseModelConverter
    implements JsonConverter<MetaResponseModel, dynamic> {
  const DynamicToMetaResponseModelConverter();

  @override
  MetaResponseModel fromJson(dynamic value) {
    if (value is Map<String, dynamic>) {
      return MetaResponseModel.fromJson(value);
    }

    return MetaResponseModel.zero;
  }

  @override
  dynamic toJson(MetaResponseModel value) => value.toJson();
}
