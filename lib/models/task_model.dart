library;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_model.g.dart';

abstract class TaskModel implements Built<TaskModel, TaskModelBuilder> {
 
  static Serializer<TaskModel> get serializer => _$taskModelSerializer;
  String get id;
  String get title;
  String get description;
  String get status;

  
  TaskModel._();

  factory TaskModel([void Function(TaskModelBuilder) updates]) = _$TaskModel;

  
  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(TaskModelBuilder b) {
    b.status = 'pending'; 
  }
}