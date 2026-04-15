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
      'status',
      serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      ),
    ];

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
        case 'status':
          result.status =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
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
  final String status;

  factory _$TaskModel([void Function(TaskModelBuilder)? updates]) =>
      (TaskModelBuilder()..update(updates))._build();

  _$TaskModel._({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
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
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskModel')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('status', status))
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

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  TaskModelBuilder() {
    TaskModel._setDefaults(this);
  }

  TaskModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _status = $v.status;
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
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'TaskModel',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
