// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: json['name'] as String,
      course: json['course'] as String?,
      group: json['group'] as String?,
      isStudent: json['isStudent'] as bool,
      personalInfo: json['personalInfo'] as bool,
      id: json['id'] as String?,
      dataOfBirth: json['dataOfBirth'] as String?,
      roomNumber: json['roomNumber'] as String?,
      specialty: json['specialty'] as String?,
      floor: json['floor'] as String?,
      prise: json['prise'] as int?,
      paid: json['paid'] as int?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'course': instance.course,
      'group': instance.group,
      'isStudent': instance.isStudent,
      'personalInfo': instance.personalInfo,
      'id': instance.id,
      'dataOfBirth': instance.dataOfBirth,
      'roomNumber': instance.roomNumber,
      'specialty': instance.specialty,
      'floor': instance.floor,
      'prise': instance.prise,
      'paid': instance.paid,
    };
