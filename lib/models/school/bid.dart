import 'package:firebase_database/firebase_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bid.freezed.dart';
part 'bid.g.dart';

@freezed
class Bid with _$Bid {
  factory Bid({
    required String description,
    required String fromName,
    required String type,
  }) = _Bid;

  const Bid._();

  factory Bid.fromJson(Map<String, dynamic> json) => _$BidFromJson(json);
  factory Bid.fromSnapshot(DataSnapshot json) => Bid(
        description: json.child('description').value.toString(),
        fromName: json.child('fromName').value.toString(),
        type: json.child('type').value.toString(),
      );
}
