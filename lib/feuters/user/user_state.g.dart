// GENERATED CODE - DO NOT MODIFY BY HAND

part of geolocation_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserState extends UserState {
  @override
  final String name;
  @override
  final int id;
  @override
  final bool isAdmin;
  @override
  final File? photo;

  factory _$UserState([void Function(UserStateBuilder)? updates]) =>
      (new UserStateBuilder()..update(updates))._build();

  _$UserState._(
      {required this.name, required this.id, required this.isAdmin, this.photo})
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
        id == other.id &&
        isAdmin == other.isAdmin &&
        photo == other.photo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isAdmin.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserState')
          ..add('name', name)
          ..add('id', id)
          ..add('isAdmin', isAdmin)
          ..add('photo', photo))
        .toString();
  }
}

class UserStateBuilder implements Builder<UserState, UserStateBuilder> {
  _$UserState? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  File? _photo;
  File? get photo => _$this._photo;
  set photo(File? photo) => _$this._photo = photo;

  UserStateBuilder();

  UserStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _isAdmin = $v.isAdmin;
      _photo = $v.photo;
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
            id: BuiltValueNullFieldError.checkNotNull(id, r'UserState', 'id'),
            isAdmin: BuiltValueNullFieldError.checkNotNull(
                isAdmin, r'UserState', 'isAdmin'),
            photo: photo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
