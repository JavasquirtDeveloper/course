// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      roomNumber: json['roomNumber'] as String,
      freeBeds: json['freeBeds'] as String,
      busyBeds: json['busyBeds'] as String,
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'roomNumber': instance.roomNumber,
      'freeBeds': instance.freeBeds,
      'busyBeds': instance.busyBeds,
    };
