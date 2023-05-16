// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  String get dataOfBirth => throw _privateConstructorUsedError;
  String get roomNumber => throw _privateConstructorUsedError;
  String? get course => throw _privateConstructorUsedError;
  String get specialty => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get floor => throw _privateConstructorUsedError;
  int? get prise => throw _privateConstructorUsedError;
  int? get paid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {String dataOfBirth,
      String roomNumber,
      String? course,
      String specialty,
      String fullName,
      String floor,
      int? prise,
      int? paid});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataOfBirth = null,
    Object? roomNumber = null,
    Object? course = freezed,
    Object? specialty = null,
    Object? fullName = null,
    Object? floor = null,
    Object? prise = freezed,
    Object? paid = freezed,
  }) {
    return _then(_value.copyWith(
      dataOfBirth: null == dataOfBirth
          ? _value.dataOfBirth
          : dataOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      roomNumber: null == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as String,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      specialty: null == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
      prise: freezed == prise
          ? _value.prise
          : prise // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$_StudentCopyWith(
          _$_Student value, $Res Function(_$_Student) then) =
      __$$_StudentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dataOfBirth,
      String roomNumber,
      String? course,
      String specialty,
      String fullName,
      String floor,
      int? prise,
      int? paid});
}

/// @nodoc
class __$$_StudentCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$_Student>
    implements _$$_StudentCopyWith<$Res> {
  __$$_StudentCopyWithImpl(_$_Student _value, $Res Function(_$_Student) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataOfBirth = null,
    Object? roomNumber = null,
    Object? course = freezed,
    Object? specialty = null,
    Object? fullName = null,
    Object? floor = null,
    Object? prise = freezed,
    Object? paid = freezed,
  }) {
    return _then(_$_Student(
      dataOfBirth: null == dataOfBirth
          ? _value.dataOfBirth
          : dataOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      roomNumber: null == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as String,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      specialty: null == specialty
          ? _value.specialty
          : specialty // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
      prise: freezed == prise
          ? _value.prise
          : prise // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Student extends _Student {
  _$_Student(
      {required this.dataOfBirth,
      required this.roomNumber,
      required this.course,
      required this.specialty,
      required this.fullName,
      required this.floor,
      required this.prise,
      required this.paid})
      : super._();

  factory _$_Student.fromJson(Map<String, dynamic> json) =>
      _$$_StudentFromJson(json);

  @override
  final String dataOfBirth;
  @override
  final String roomNumber;
  @override
  final String? course;
  @override
  final String specialty;
  @override
  final String fullName;
  @override
  final String floor;
  @override
  final int? prise;
  @override
  final int? paid;

  @override
  String toString() {
    return 'Student(dataOfBirth: $dataOfBirth, roomNumber: $roomNumber, course: $course, specialty: $specialty, fullName: $fullName, floor: $floor, prise: $prise, paid: $paid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Student &&
            (identical(other.dataOfBirth, dataOfBirth) ||
                other.dataOfBirth == dataOfBirth) &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.specialty, specialty) ||
                other.specialty == specialty) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.prise, prise) || other.prise == prise) &&
            (identical(other.paid, paid) || other.paid == paid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dataOfBirth, roomNumber, course,
      specialty, fullName, floor, prise, paid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentCopyWith<_$_Student> get copyWith =>
      __$$_StudentCopyWithImpl<_$_Student>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentToJson(
      this,
    );
  }
}

abstract class _Student extends Student {
  factory _Student(
      {required final String dataOfBirth,
      required final String roomNumber,
      required final String? course,
      required final String specialty,
      required final String fullName,
      required final String floor,
      required final int? prise,
      required final int? paid}) = _$_Student;
  _Student._() : super._();

  factory _Student.fromJson(Map<String, dynamic> json) = _$_Student.fromJson;

  @override
  String get dataOfBirth;
  @override
  String get roomNumber;
  @override
  String? get course;
  @override
  String get specialty;
  @override
  String get fullName;
  @override
  String get floor;
  @override
  int? get prise;
  @override
  int? get paid;
  @override
  @JsonKey(ignore: true)
  _$$_StudentCopyWith<_$_Student> get copyWith =>
      throw _privateConstructorUsedError;
}
