import '../../data/models/task_model.dart';

abstract class TaskRepository {
  Future<void> addTask(TaskModel task);
  Future<void> updateTask(TaskModel task);
  Future<void> deleteTask(String id);
  Stream<List<TaskModel>> getTasks(String userId);
}
