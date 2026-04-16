import '../repository/task_repository.dart';
import '../../data/models/task_model.dart';

class UpdateTask {
  final TaskRepository repo;
  UpdateTask(this.repo);

  Future<void> call(TaskModel task) => repo.updateTask(task);
}
