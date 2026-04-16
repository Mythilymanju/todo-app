import '../repository/task_repository.dart';
import '../../data/models/task_model.dart';

class AddTask {
  final TaskRepository repo;
  AddTask(this.repo);

  Future<void> call(TaskModel task) => repo.addTask(task);
}
