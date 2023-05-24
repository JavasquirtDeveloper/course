// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Student _$$_StudentFromJson(Map<String, dynamic> json) => _$_Student(
      dataOfBirth: json['dataOfBirth'] as String?,
      roomNumber: json['roomNumber'] as String?,
      course: json['course'] as int?,
      specialty: json['specialty'] as String,
      fullName: json['fullName'] as String,
      floor: json['floor'] as String?,
      prise: json['prise'] as int?,
      paid: json['paid'] as int?,
    );

Map<String, dynamic> _$$_StudentToJson(_$_Student instance) =>
    <String, dynamic>{
      'dataOfBirth': instance.dataOfBirth,
      'roomNumber': instance.roomNumber,
      'course': instance.course,
      'specialty': instance.specialty,
      'fullName': instance.fullName,
      'floor': instance.floor,
      'prise': instance.prise,
      'paid': instance.paid,
    };
