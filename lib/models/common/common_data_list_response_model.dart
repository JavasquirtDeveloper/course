import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_1/convertes/dynamic_to_meta_response_model_converter.dart';
import 'package:flutter_application_1/models/common/meta_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_data_list_response_model.freezed.dart';
part 'common_data_list_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class CommonDataListResponseModel<T> with _$CommonDataListResponseModel<T> {
  const factory CommonDataListResponseModel.data({
    required List<T> rooms,
    @DynamicToMetaResponseModelConverter()
    @Default(MetaResponseModel.zero)
        MetaResponseModel meta,
  }) = _CommonDataListResponseModel;

  factory CommonDataListResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) =>
      _$CommonDataListResponseModelFromJson(
        json,
        // ignore: cast_nullable_to_non_nullable
        (e) => fromJsonT(e as Map<String, dynamic>),
      );

  // factory CommonDataListResponseModel.fromSnapshot(
  //   DataSnapshot json,
  //   T Function(DataSnapshot) fromJsonT,
  // ) =>
  //     _$CommonDataListResponseModelFromShapshot(
  //       json,
  //       // ignore: cast_nullable_to_non_nullable
  //       (e) => fromJsonT(e as DataSnapshot),
  //     );
}
