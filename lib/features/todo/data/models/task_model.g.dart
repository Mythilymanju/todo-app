// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TaskModel> _$taskModelSerializer = _$TaskModelSerializer();

class _$TaskModelSerializer implements StructuredSerializer<TaskModel> {
  @override
  final Iterable<Type> types = const [TaskModel, _$TaskModel];
  @override
  final String wireName = 'TaskModel';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TaskModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      ),
      'description',
      serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      ),
      'userId',
      serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      ),
      'status',
      serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      ),
      'createdAt',
      serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      ),
    ];
    Object? value;
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(DateTime)),
        );
    }
    return result;
  }

  @override
  TaskModel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'title':
          result.title =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'description':
          result.description =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'userId':
          result.userId =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'status':
          result.status =
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
        case 'updatedAt':
          result.updatedAt =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime?;
          break;
      }
    }

    return result.build();
  }
}

class _$TaskModel extends TaskModel {
  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String userId;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$TaskModel([void Function(TaskModelBuilder)? updates]) =>
      (TaskModelBuilder()..update(updates))._build();

  _$TaskModel._({
    required this.id,
    required this.title,
    required this.description,
    required this.userId,
    required this.status,
    required this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  TaskModel rebuild(void Function(TaskModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskModelBuilder toBuilder() => TaskModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskModel &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        userId == other.userId &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskModel')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('userId', userId)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TaskModelBuilder implements Builder<TaskModel, TaskModelBuilder> {
  _$TaskModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  TaskModelBuilder();

  TaskModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _userId = $v.userId;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskModel other) {
    _$v = other as _$TaskModel;
  }

  @override
  void update(void Function(TaskModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskModel build() => _build();

  _$TaskModel _build() {
    final _$result =
        _$v ??
        _$TaskModel._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'TaskModel', 'id'),
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'TaskModel',
            'title',
          ),
          description: BuiltValueNullFieldError.checkNotNull(
            description,
            r'TaskModel',
            'description',
          ),
          userId: BuiltValueNullFieldError.checkNotNull(
            userId,
            r'TaskModel',
            'userId',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'TaskModel',
            'status',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'TaskModel',
            'createdAt',
          ),
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
