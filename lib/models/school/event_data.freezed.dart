// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventData _$EventDataFromJson(Map<String, dynamic> json) {
  return _EventData.fromJson(json);
}

/// @nodoc
mixin _$EventData {
  int get second => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;
  int get third => throw _privateConstructorUsedError;
  int get four => throw _privateConstructorUsedError;
  int get five => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDataCopyWith<EventData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDataCopyWith<$Res> {
  factory $EventDataCopyWith(EventData value, $Res Function(EventData) then) =
      _$EventDataCopyWithImpl<$Res, EventData>;
  @useResult
  $Res call({int second, String? data, int third, int four, int five});
}

/// @nodoc
class _$EventDataCopyWithImpl<$Res, $Val extends EventData>
    implements $EventDataCopyWith<$Res> {
  _$EventDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? second = null,
    Object? data = freezed,
    Object? third = null,
    Object? four = null,
    Object? five = null,
  }) {
    return _then(_value.copyWith(
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      third: null == third
          ? _value.third
          : third // ignore: cast_nullable_to_non_nullable
              as int,
      four: null == four
          ? _value.four
          : four // ignore: cast_nullable_to_non_nullable
              as int,
      five: null == five
          ? _value.five
          : five // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventDataCopyWith<$Res> implements $EventDataCopyWith<$Res> {
  factory _$$_EventDataCopyWith(
          _$_EventData value, $Res Function(_$_EventData) then) =
      __$$_EventDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int second, String? data, int third, int four, int five});
}

/// @nodoc
class __$$_EventDataCopyWithImpl<$Res>
    extends _$EventDataCopyWithImpl<$Res, _$_EventData>
    implements _$$_EventDataCopyWith<$Res> {
  __$$_EventDataCopyWithImpl(
      _$_EventData _value, $Res Function(_$_EventData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? second = null,
    Object? data = freezed,
    Object? third = null,
    Object? four = null,
    Object? five = null,
  }) {
    return _then(_$_EventData(
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      third: null == third
          ? _value.third
          : third // ignore: cast_nullable_to_non_nullable
              as int,
      four: null == four
          ? _value.four
          : four // ignore: cast_nullable_to_non_nullable
              as int,
      five: null == five
          ? _value.five
          : five // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventData extends _EventData {
  _$_EventData(
      {required this.second,
      required this.data,
      required this.third,
      required this.four,
      required this.five})
      : super._();

  factory _$_EventData.fromJson(Map<String, dynamic> json) =>
      _$$_EventDataFromJson(json);

  @override
  final int second;
  @override
  final String? data;
  @override
  final int third;
  @override
  final int four;
  @override
  final int five;

  @override
  String toString() {
    return 'EventData(second: $second, data: $data, third: $third, four: $four, five: $five)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventData &&
            (identical(other.second, second) || other.second == second) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.third, third) || other.third == third) &&
            (identical(other.four, four) || other.four == four) &&
            (identical(other.five, five) || other.five == five));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, second, data, third, four, five);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDataCopyWith<_$_EventData> get copyWith =>
      __$$_EventDataCopyWithImpl<_$_EventData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDataToJson(
      this,
    );
  }
}

abstract class _EventData extends EventData {
  factory _EventData(
      {required final int second,
      required final String? data,
      required final int third,
      required final int four,
      required final int five}) = _$_EventData;
  _EventData._() : super._();

  factory _EventData.fromJson(Map<String, dynamic> json) =
      _$_EventData.fromJson;

  @override
  int get second;
  @override
  String? get data;
  @override
  int get third;
  @override
  int get four;
  @override
  int get five;
  @override
  @JsonKey(ignore: true)
  _$$_EventDataCopyWith<_$_EventData> get copyWith =>
      throw _privateConstructorUsedError;
}
