import 'package:firebase_database/firebase_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_data.freezed.dart';
part 'event_data.g.dart';

@freezed
class EventData with _$EventData {
  factory EventData({
    required int second,
    required String? data,
    required int third,
    required int four,
    required int five,
  }) = _EventData;

  const EventData._();

  factory EventData.fromJson(Map<String, dynamic> json) =>
      _$EventDataFromJson(json);

  factory EventData.fromSnapshot(DataSnapshot json) => EventData(
        second: json.child('2').value as int,
        data: json.key,
        third: json.child('3').value as int,
        four: json.child('4').value as int,
        five: json.child('5').value as int,
      );
}
