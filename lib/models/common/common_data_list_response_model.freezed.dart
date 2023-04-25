// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_data_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonDataListResponseModel<T> _$CommonDataListResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _CommonDataListResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$CommonDataListResponseModel<T> {
  List<T> get rooms => throw _privateConstructorUsedError;
  @DynamicToMetaResponseModelConverter()
  MetaResponseModel get meta => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> rooms,
            @DynamicToMetaResponseModelConverter() MetaResponseModel meta)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> rooms,
            @DynamicToMetaResponseModelConverter() MetaResponseModel meta)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> rooms,
            @DynamicToMetaResponseModelConverter() MetaResponseModel meta)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonDataListResponseModel<T> value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonDataListResponseModel<T> value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonDataListResponseModel<T> value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonDataListResponseModelCopyWith<T, CommonDataListResponseModel<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonDataListResponseModelCopyWith<T, $Res> {
  factory $CommonDataListResponseModelCopyWith(
          CommonDataListResponseModel<T> value,
          $Res Function(CommonDataListResponseModel<T>) then) =
      _$CommonDataListResponseModelCopyWithImpl<T, $Res,
          CommonDataListResponseModel<T>>;
  @useResult
  $Res call(
      {List<T> rooms,
      @DynamicToMetaResponseModelConverter() MetaResponseModel meta});

  $MetaResponseModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$CommonDataListResponseModelCopyWithImpl<T, $Res,
        $Val extends CommonDataListResponseModel<T>>
    implements $CommonDataListResponseModelCopyWith<T, $Res> {
  _$CommonDataListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<T>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponseModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaResponseModelCopyWith<$Res> get meta {
    return $MetaResponseModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommonDataListResponseModelCopyWith<T, $Res>
    implements $CommonDataListResponseModelCopyWith<T, $Res> {
  factory _$$_CommonDataListResponseModelCopyWith(
          _$_CommonDataListResponseModel<T> value,
          $Res Function(_$_CommonDataListResponseModel<T>) then) =
      __$$_CommonDataListResponseModelCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> rooms,
      @DynamicToMetaResponseModelConverter() MetaResponseModel meta});

  @override
  $MetaResponseModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_CommonDataListResponseModelCopyWithImpl<T, $Res>
    extends _$CommonDataListResponseModelCopyWithImpl<T, $Res,
        _$_CommonDataListResponseModel<T>>
    implements _$$_CommonDataListResponseModelCopyWith<T, $Res> {
  __$$_CommonDataListResponseModelCopyWithImpl(
      _$_CommonDataListResponseModel<T> _value,
      $Res Function(_$_CommonDataListResponseModel<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
    Object? meta = null,
  }) {
    return _then(_$_CommonDataListResponseModel<T>(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<T>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponseModel,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_CommonDataListResponseModel<T>
    implements _CommonDataListResponseModel<T> {
  const _$_CommonDataListResponseModel(
      {required final List<T> rooms,
      @DynamicToMetaResponseModelConverter()
          this.meta = MetaResponseModel.zero})
      : _rooms = rooms;

  factory _$_CommonDataListResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_CommonDataListResponseModelFromJson(json, fromJsonT);

  final List<T> _rooms;
  @override
  List<T> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  @JsonKey()
  @DynamicToMetaResponseModelConverter()
  final MetaResponseModel meta;

  @override
  String toString() {
    return 'CommonDataListResponseModel<$T>.data(rooms: $rooms, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonDataListResponseModel<T> &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_rooms), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonDataListResponseModelCopyWith<T, _$_CommonDataListResponseModel<T>>
      get copyWith => __$$_CommonDataListResponseModelCopyWithImpl<T,
          _$_CommonDataListResponseModel<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> rooms,
            @DynamicToMetaResponseModelConverter() MetaResponseModel meta)
        data,
  }) {
    return data(rooms, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> rooms,
            @DynamicToMetaResponseModelConverter() MetaResponseModel meta)?
        data,
  }) {
    return data?.call(rooms, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> rooms,
            @DynamicToMetaResponseModelConverter() MetaResponseModel meta)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(rooms, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonDataListResponseModel<T> value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonDataListResponseModel<T> value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonDataListResponseModel<T> value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_CommonDataListResponseModelToJson<T>(this, toJsonT);
  }
}

abstract class _CommonDataListResponseModel<T>
    implements CommonDataListResponseModel<T> {
  const factory _CommonDataListResponseModel(
      {required final List<T> rooms,
      @DynamicToMetaResponseModelConverter()
          final MetaResponseModel meta}) = _$_CommonDataListResponseModel<T>;

  factory _CommonDataListResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_CommonDataListResponseModel<T>.fromJson;

  @override
  List<T> get rooms;
  @override
  @DynamicToMetaResponseModelConverter()
  MetaResponseModel get meta;
  @override
  @JsonKey(ignore: true)
  _$$_CommonDataListResponseModelCopyWith<T, _$_CommonDataListResponseModel<T>>
      get copyWith => throw _privateConstructorUsedError;
}
