// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  String get roomNumber => throw _privateConstructorUsedError;
  String get freeBeds => throw _privateConstructorUsedError;
  String get busyBeds => throw _privateConstructorUsedError;
  String get placeCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
  @useResult
  $Res call(
      {String roomNumber, String freeBeds, String busyBeds, String placeCount});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomNumber = null,
    Object? freeBeds = null,
    Object? busyBeds = null,
    Object? placeCount = null,
  }) {
    return _then(_value.copyWith(
      roomNumber: null == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as String,
      freeBeds: null == freeBeds
          ? _value.freeBeds
          : freeBeds // ignore: cast_nullable_to_non_nullable
              as String,
      busyBeds: null == busyBeds
          ? _value.busyBeds
          : busyBeds // ignore: cast_nullable_to_non_nullable
              as String,
      placeCount: null == placeCount
          ? _value.placeCount
          : placeCount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$_RoomCopyWith(_$_Room value, $Res Function(_$_Room) then) =
      __$$_RoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roomNumber, String freeBeds, String busyBeds, String placeCount});
}

/// @nodoc
class __$$_RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res, _$_Room>
    implements _$$_RoomCopyWith<$Res> {
  __$$_RoomCopyWithImpl(_$_Room _value, $Res Function(_$_Room) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomNumber = null,
    Object? freeBeds = null,
    Object? busyBeds = null,
    Object? placeCount = null,
  }) {
    return _then(_$_Room(
      roomNumber: null == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as String,
      freeBeds: null == freeBeds
          ? _value.freeBeds
          : freeBeds // ignore: cast_nullable_to_non_nullable
              as String,
      busyBeds: null == busyBeds
          ? _value.busyBeds
          : busyBeds // ignore: cast_nullable_to_non_nullable
              as String,
      placeCount: null == placeCount
          ? _value.placeCount
          : placeCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room extends _Room {
  _$_Room(
      {required this.roomNumber,
      required this.freeBeds,
      required this.busyBeds,
      required this.placeCount})
      : super._();

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

  @override
  final String roomNumber;
  @override
  final String freeBeds;
  @override
  final String busyBeds;
  @override
  final String placeCount;

  @override
  String toString() {
    return 'Room(roomNumber: $roomNumber, freeBeds: $freeBeds, busyBeds: $busyBeds, placeCount: $placeCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Room &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            (identical(other.freeBeds, freeBeds) ||
                other.freeBeds == freeBeds) &&
            (identical(other.busyBeds, busyBeds) ||
                other.busyBeds == busyBeds) &&
            (identical(other.placeCount, placeCount) ||
                other.placeCount == placeCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, roomNumber, freeBeds, busyBeds, placeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomCopyWith<_$_Room> get copyWith =>
      __$$_RoomCopyWithImpl<_$_Room>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomToJson(
      this,
    );
  }
}

abstract class _Room extends Room {
  factory _Room(
      {required final String roomNumber,
      required final String freeBeds,
      required final String busyBeds,
      required final String placeCount}) = _$_Room;
  _Room._() : super._();

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override
  String get roomNumber;
  @override
  String get freeBeds;
  @override
  String get busyBeds;
  @override
  String get placeCount;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCopyWith<_$_Room> get copyWith => throw _privateConstructorUsedError;
}
