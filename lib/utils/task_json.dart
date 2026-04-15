import '../models/task_model.dart';
import '../models/serializers.dart';

Map<String, dynamic> taskToJson(TaskModel task) {
  return serializers.serializeWith(TaskModel.serializer, task)
      as Map<String, dynamic>;
}

TaskModel taskFromJson(Map<String, dynamic> json) {
  return serializers.deserializeWith(TaskModel.serializer, json)!;
}