// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaPaginationModel _$MetaPaginationModelFromJson(Map<String, dynamic> json) {
  return _MetaResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MetaPaginationModel {
  int get current => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaPaginationModelCopyWith<MetaPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaPaginationModelCopyWith<$Res> {
  factory $MetaPaginationModelCopyWith(
          MetaPaginationModel value, $Res Function(MetaPaginationModel) then) =
      _$MetaPaginationModelCopyWithImpl<$Res, MetaPaginationModel>;
  @useResult
  $Res call({int current, int lastPage, int perPage, int total});
}

/// @nodoc
class _$MetaPaginationModelCopyWithImpl<$Res, $Val extends MetaPaginationModel>
    implements $MetaPaginationModelCopyWith<$Res> {
  _$MetaPaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaResponseModelCopyWith<$Res>
    implements $MetaPaginationModelCopyWith<$Res> {
  factory _$$_MetaResponseModelCopyWith(_$_MetaResponseModel value,
          $Res Function(_$_MetaResponseModel) then) =
      __$$_MetaResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current, int lastPage, int perPage, int total});
}

/// @nodoc
class __$$_MetaResponseModelCopyWithImpl<$Res>
    extends _$MetaPaginationModelCopyWithImpl<$Res, _$_MetaResponseModel>
    implements _$$_MetaResponseModelCopyWith<$Res> {
  __$$_MetaResponseModelCopyWithImpl(
      _$_MetaResponseModel _value, $Res Function(_$_MetaResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$_MetaResponseModel(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaResponseModel implements _MetaResponseModel {
  const _$_MetaResponseModel(
      {required this.current,
      required this.lastPage,
      required this.perPage,
      required this.total});

  factory _$_MetaResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MetaResponseModelFromJson(json);

  @override
  final int current;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  @override
  String toString() {
    return 'MetaPaginationModel(current: $current, lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaResponseModel &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, current, lastPage, perPage, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaResponseModelCopyWith<_$_MetaResponseModel> get copyWith =>
      __$$_MetaResponseModelCopyWithImpl<_$_MetaResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaResponseModelToJson(
      this,
    );
  }
}

abstract class _MetaResponseModel implements MetaPaginationModel {
  const factory _MetaResponseModel(
      {required final int current,
      required final int lastPage,
      required final int perPage,
      required final int total}) = _$_MetaResponseModel;

  factory _MetaResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MetaResponseModel.fromJson;

  @override
  int get current;
  @override
  int get lastPage;
  @override
  int get perPage;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_MetaResponseModelCopyWith<_$_MetaResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
