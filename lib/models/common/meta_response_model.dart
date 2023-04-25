import 'package:flutter_application_1/models/common/meta_pagination_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'meta_response_model.freezed.dart';
part 'meta_response_model.g.dart';

@freezed
class MetaResponseModel with _$MetaResponseModel {
  const factory MetaResponseModel({
    required MetaPaginationModel pagination,
  }) = _MetaResponseModel;

  factory MetaResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MetaResponseModelFromJson(json);

  static const zero = _$_MetaResponseModel(
    pagination: MetaPaginationModel(
      current: 0,
      lastPage: 0,
      perPage: 0,
      total: 0,
    ),
  );
}
