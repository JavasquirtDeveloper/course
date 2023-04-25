// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SchoolState extends SchoolState {
  @override
  final List<Room> rooms;
  @override
  final List<Student> students;

  factory _$SchoolState([void Function(SchoolStateBuilder)? updates]) =>
      (new SchoolStateBuilder()..update(updates))._build();

  _$SchoolState._({required this.rooms, required this.students}) : super._() {
    BuiltValueNullFieldError.checkNotNull(rooms, r'SchoolState', 'rooms');
    BuiltValueNullFieldError.checkNotNull(students, r'SchoolState', 'students');
  }

  @override
  SchoolState rebuild(void Function(SchoolStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SchoolStateBuilder toBuilder() => new SchoolStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchoolState &&
        rooms == other.rooms &&
        students == other.students;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rooms.hashCode);
    _$hash = $jc(_$hash, students.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SchoolState')
          ..add('rooms', rooms)
          ..add('students', students))
        .toString();
  }
}

class SchoolStateBuilder implements Builder<SchoolState, SchoolStateBuilder> {
  _$SchoolState? _$v;

  List<Room>? _rooms;
  List<Room>? get rooms => _$this._rooms;
  set rooms(List<Room>? rooms) => _$this._rooms = rooms;

  List<Student>? _students;
  List<Student>? get students => _$this._students;
  set students(List<Student>? students) => _$this._students = students;

  SchoolStateBuilder();

  SchoolStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rooms = $v.rooms;
      _students = $v.students;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SchoolState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SchoolState;
  }

  @override
  void update(void Function(SchoolStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SchoolState build() => _build();

  _$SchoolState _build() {
    final _$result = _$v ??
        new _$SchoolState._(
            rooms: BuiltValueNullFieldError.checkNotNull(
                rooms, r'SchoolState', 'rooms'),
            students: BuiltValueNullFieldError.checkNotNull(
                students, r'SchoolState', 'students'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
