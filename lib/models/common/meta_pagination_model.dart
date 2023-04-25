import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_pagination_model.freezed.dart';
part 'meta_pagination_model.g.dart';

@freezed
class MetaPaginationModel with _$MetaPaginationModel {
  const factory MetaPaginationModel({
    required int current,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _MetaResponseModel;

  factory MetaPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$MetaPaginationModelFromJson(json);
}
