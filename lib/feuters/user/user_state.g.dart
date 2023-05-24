// GENERATED CODE - DO NOT MODIFY BY HAND

part of geolocation_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserState extends UserState {
  @override
  final String name;
  @override
  final String? group;
  @override
  final String? course;
  @override
  final String id;
  @override
  final bool isAdmin;
  @override
  final File? photo;
  @override
  final String? dataOfBirth;
  @override
  final String? roomNumber;
  @override
  final String? specialty;
  @override
  final String? floor;
  @override
  final int? prise;
  @override
  final int? paid;

  factory _$UserState([void Function(UserStateBuilder)? updates]) =>
      (new UserStateBuilder()..update(updates))._build();

  _$UserState._(
      {required this.name,
      this.group,
      this.course,
      required this.id,
      required this.isAdmin,
      this.photo,
      this.dataOfBirth,
      this.roomNumber,
      this.specialty,
      this.floor,
      this.prise,
      this.paid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'UserState', 'name');
    BuiltValueNullFieldError.checkNotNull(id, r'UserState', 'id');
    BuiltValueNullFieldError.checkNotNull(isAdmin, r'UserState', 'isAdmin');
  }

  @override
  UserState rebuild(void Function(UserStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserStateBuilder toBuilder() => new UserStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserState &&
        name == other.name &&
        group == other.group &&
        course == other.course &&
        id == other.id &&
        isAdmin == other.isAdmin &&
        photo == other.photo &&
        dataOfBirth == other.dataOfBirth &&
        roomNumber == other.roomNumber &&
        specialty == other.specialty &&
        floor == other.floor &&
        prise == other.prise &&
        paid == other.paid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, course.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isAdmin.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, dataOfBirth.hashCode);
    _$hash = $jc(_$hash, roomNumber.hashCode);
    _$hash = $jc(_$hash, specialty.hashCode);
    _$hash = $jc(_$hash, floor.hashCode);
    _$hash = $jc(_$hash, prise.hashCode);
    _$hash = $jc(_$hash, paid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserState')
          ..add('name', name)
          ..add('group', group)
          ..add('course', course)
          ..add('id', id)
          ..add('isAdmin', isAdmin)
          ..add('photo', photo)
          ..add('dataOfBirth', dataOfBirth)
          ..add('roomNumber', roomNumber)
          ..add('specialty', specialty)
          ..add('floor', floor)
          ..add('prise', prise)
          ..add('paid', paid))
        .toString();
  }
}

class UserStateBuilder implements Builder<UserState, UserStateBuilder> {
  _$UserState? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _group;
  String? get group => _$this._group;
  set group(String? group) => _$this._group = group;

  String? _course;
  String? get course => _$this._course;
  set course(String? course) => _$this._course = course;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  File? _photo;
  File? get photo => _$this._photo;
  set photo(File? photo) => _$this._photo = photo;

  String? _dataOfBirth;
  String? get dataOfBirth => _$this._dataOfBirth;
  set dataOfBirth(String? dataOfBirth) => _$this._dataOfBirth = dataOfBirth;

  String? _roomNumber;
  String? get roomNumber => _$this._roomNumber;
  set roomNumber(String? roomNumber) => _$this._roomNumber = roomNumber;

  String? _specialty;
  String? get specialty => _$this._specialty;
  set specialty(String? specialty) => _$this._specialty = specialty;

  String? _floor;
  String? get floor => _$this._floor;
  set floor(String? floor) => _$this._floor = floor;

  int? _prise;
  int? get prise => _$this._prise;
  set prise(int? prise) => _$this._prise = prise;

  int? _paid;
  int? get paid => _$this._paid;
  set paid(int? paid) => _$this._paid = paid;

  UserStateBuilder();

  UserStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _group = $v.group;
      _course = $v.course;
      _id = $v.id;
      _isAdmin = $v.isAdmin;
      _photo = $v.photo;
      _dataOfBirth = $v.dataOfBirth;
      _roomNumber = $v.roomNumber;
      _specialty = $v.specialty;
      _floor = $v.floor;
      _prise = $v.prise;
      _paid = $v.paid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserState;
  }

  @override
  void update(void Function(UserStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserState build() => _build();

  _$UserState _build() {
    final _$result = _$v ??
        new _$UserState._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'UserState', 'name'),
            group: group,
            course: course,
            id: BuiltValueNullFieldError.checkNotNull(id, r'UserState', 'id'),
            isAdmin: BuiltValueNullFieldError.checkNotNull(
                isAdmin, r'UserState', 'isAdmin'),
            photo: photo,
            dataOfBirth: dataOfBirth,
            roomNumber: roomNumber,
            specialty: specialty,
            floor: floor,
            prise: prise,
            paid: paid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
