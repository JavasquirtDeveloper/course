// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaResponseModel _$$_MetaResponseModelFromJson(Map<String, dynamic> json) =>
    _$_MetaResponseModel(
      current: json['current'] as int,
      lastPage: json['lastPage'] as int,
      perPage: json['perPage'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_MetaResponseModelToJson(
        _$_MetaResponseModel instance) =>
    <String, dynamic>{
      'current': instance.current,
      'lastPage': instance.lastPage,
      'perPage': instance.perPage,
      'total': instance.total,
    };
