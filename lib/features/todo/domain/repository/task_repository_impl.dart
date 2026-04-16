import '../../../../core/services/task_service.dart';
import '../../data/models/task_model.dart';
import 'task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskService service;

  TaskRepositoryImpl(this.service);

  @override
  Future<void> addTask(TaskModel task) => service.addTask(task);

  @override
  Future<void> updateTask(TaskModel task) => service.updateTask(task);

  @override
  Future<void> deleteTask(String id) => service.deleteTask(id);

  @override
  Stream<List<TaskModel>> getTasks(String userId) => service.getTasks(userId);
}
