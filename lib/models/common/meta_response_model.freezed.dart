// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaResponseModel _$MetaResponseModelFromJson(Map<String, dynamic> json) {
  return _MetaResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MetaResponseModel {
  MetaPaginationModel get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaResponseModelCopyWith<MetaResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaResponseModelCopyWith<$Res> {
  factory $MetaResponseModelCopyWith(
          MetaResponseModel value, $Res Function(MetaResponseModel) then) =
      _$MetaResponseModelCopyWithImpl<$Res, MetaResponseModel>;
  @useResult
  $Res call({MetaPaginationModel pagination});

  $MetaPaginationModelCopyWith<$Res> get pagination;
}

/// @nodoc
class _$MetaResponseModelCopyWithImpl<$Res, $Val extends MetaResponseModel>
    implements $MetaResponseModelCopyWith<$Res> {
  _$MetaResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as MetaPaginationModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaPaginationModelCopyWith<$Res> get pagination {
    return $MetaPaginationModelCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MetaResponseModelCopyWith<$Res>
    implements $MetaResponseModelCopyWith<$Res> {
  factory _$$_MetaResponseModelCopyWith(_$_MetaResponseModel value,
          $Res Function(_$_MetaResponseModel) then) =
      __$$_MetaResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MetaPaginationModel pagination});

  @override
  $MetaPaginationModelCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_MetaResponseModelCopyWithImpl<$Res>
    extends _$MetaResponseModelCopyWithImpl<$Res, _$_MetaResponseModel>
    implements _$$_MetaResponseModelCopyWith<$Res> {
  __$$_MetaResponseModelCopyWithImpl(
      _$_MetaResponseModel _value, $Res Function(_$_MetaResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
  }) {
    return _then(_$_MetaResponseModel(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as MetaPaginationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaResponseModel implements _MetaResponseModel {
  const _$_MetaResponseModel({required this.pagination});

  factory _$_MetaResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MetaResponseModelFromJson(json);

  @override
  final MetaPaginationModel pagination;

  @override
  String toString() {
    return 'MetaResponseModel(pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaResponseModel &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pagination);

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

abstract class _MetaResponseModel implements MetaResponseModel {
  const factory _MetaResponseModel(
      {required final MetaPaginationModel pagination}) = _$_MetaResponseModel;

  factory _MetaResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MetaResponseModel.fromJson;

  @override
  MetaPaginationModel get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_MetaResponseModelCopyWith<_$_MetaResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
