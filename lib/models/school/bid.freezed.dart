// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bid _$BidFromJson(Map<String, dynamic> json) {
  return _Bid.fromJson(json);
}

/// @nodoc
mixin _$Bid {
  String get description => throw _privateConstructorUsedError;
  String get fromName => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BidCopyWith<Bid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidCopyWith<$Res> {
  factory $BidCopyWith(Bid value, $Res Function(Bid) then) =
      _$BidCopyWithImpl<$Res, Bid>;
  @useResult
  $Res call({String description, String fromName, String type});
}

/// @nodoc
class _$BidCopyWithImpl<$Res, $Val extends Bid> implements $BidCopyWith<$Res> {
  _$BidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? fromName = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BidCopyWith<$Res> implements $BidCopyWith<$Res> {
  factory _$$_BidCopyWith(_$_Bid value, $Res Function(_$_Bid) then) =
      __$$_BidCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String fromName, String type});
}

/// @nodoc
class __$$_BidCopyWithImpl<$Res> extends _$BidCopyWithImpl<$Res, _$_Bid>
    implements _$$_BidCopyWith<$Res> {
  __$$_BidCopyWithImpl(_$_Bid _value, $Res Function(_$_Bid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? fromName = null,
    Object? type = null,
  }) {
    return _then(_$_Bid(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bid extends _Bid {
  _$_Bid(
      {required this.description, required this.fromName, required this.type})
      : super._();

  factory _$_Bid.fromJson(Map<String, dynamic> json) => _$$_BidFromJson(json);

  @override
  final String description;
  @override
  final String fromName;
  @override
  final String type;

  @override
  String toString() {
    return 'Bid(description: $description, fromName: $fromName, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bid &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fromName, fromName) ||
                other.fromName == fromName) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, fromName, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BidCopyWith<_$_Bid> get copyWith =>
      __$$_BidCopyWithImpl<_$_Bid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BidToJson(
      this,
    );
  }
}

abstract class _Bid extends Bid {
  factory _Bid(
      {required final String description,
      required final String fromName,
      required final String type}) = _$_Bid;
  _Bid._() : super._();

  factory _Bid.fromJson(Map<String, dynamic> json) = _$_Bid.fromJson;

  @override
  String get description;
  @override
  String get fromName;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_BidCopyWith<_$_Bid> get copyWith => throw _privateConstructorUsedError;
}
