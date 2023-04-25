// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_data_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommonDataListResponseModel<T> _$$_CommonDataListResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_CommonDataListResponseModel<T>(
      rooms: (json['rooms'] as List<dynamic>).map(fromJsonT).toList(),
      meta: json['meta'] == null
          ? MetaResponseModel.zero
          : const DynamicToMetaResponseModelConverter().fromJson(json['meta']),
    );

Map<String, dynamic> _$$_CommonDataListResponseModelToJson<T>(
  _$_CommonDataListResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'rooms': instance.rooms.map(toJsonT).toList(),
      'meta': const DynamicToMetaResponseModelConverter().toJson(instance.meta),
    };
