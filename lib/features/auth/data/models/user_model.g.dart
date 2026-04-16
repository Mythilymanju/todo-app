// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserModel> _$userModelSerializer = _$UserModelSerializer();

class _$UserModelSerializer implements StructuredSerializer<UserModel> {
  @override
  final Iterable<Type> types = const [UserModel, _$UserModel];
  @override
  final String wireName = 'UserModel';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UserModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      ),
      'createdAt',
      serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      ),
    ];

    return result;
  }

  @override
  UserModel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'email':
          result.email =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'createdAt':
          result.createdAt =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )!
                  as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$UserModel extends UserModel {
  @override
  final String uid;
  @override
  final String name;
  @override
  final String email;
  @override
  final DateTime createdAt;

  factory _$UserModel([void Function(UserModelBuilder)? updates]) =>
      (UserModelBuilder()..update(updates))._build();

  _$UserModel._({
    required this.uid,
    required this.name,
    required this.email,
    required this.createdAt,
  }) : super._();
  @override
  UserModel rebuild(void Function(UserModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserModelBuilder toBuilder() => UserModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserModel &&
        uid == other.uid &&
        name == other.name &&
        email == other.email &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserModel')
          ..add('uid', uid)
          ..add('name', name)
          ..add('email', email)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class UserModelBuilder implements Builder<UserModel, UserModelBuilder> {
  _$UserModel? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  UserModelBuilder();

  UserModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _name = $v.name;
      _email = $v.email;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserModel other) {
    _$v = other as _$UserModel;
  }

  @override
  void update(void Function(UserModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserModel build() => _build();

  _$UserModel _build() {
    final _$result =
        _$v ??
        _$UserModel._(
          uid: BuiltValueNullFieldError.checkNotNull(uid, r'UserModel', 'uid'),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'UserModel',
            'name',
          ),
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'UserModel',
            'email',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'UserModel',
            'createdAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
