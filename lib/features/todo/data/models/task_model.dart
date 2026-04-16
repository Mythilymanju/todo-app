library task_model;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../../../../core/serializers/serializers.dart';

part 'task_model.g.dart';

abstract class TaskModel implements Built<TaskModel, TaskModelBuilder> {
  String get id;
  String get title;
  String get description;
  String get userId;
  String get status;

  DateTime get createdAt;
  DateTime? get updatedAt;

  TaskModel._();
  factory TaskModel([void Function(TaskModelBuilder) updates]) = _$TaskModel;

  Map<String, dynamic> toJson() =>
      serializers.serializeWith(TaskModel.serializer, this)
          as Map<String, dynamic>;

  static TaskModel fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(TaskModel.serializer, json)!;

  static Serializer<TaskModel> get serializer => _$taskModelSerializer;
}
