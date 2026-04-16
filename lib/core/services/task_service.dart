import 'package:cloud_firestore/cloud_firestore.dart';
import '../../features/todo/data/models/task_model.dart';

class TaskService {
  final _db = FirebaseFirestore.instance;

  Future<void> addTask(TaskModel task) async {
    await _db.collection('tasks').doc(task.id).set(task.toJson());
  }

  Future<void> updateTask(TaskModel task) async {
    final updated = task.rebuild((b) => b..updatedAt = DateTime.now());

    await _db.collection('tasks').doc(task.id).update(updated.toJson());
  }

  Future<void> deleteTask(String id) async {
    await _db.collection('tasks').doc(id).delete();
  }

  Stream<List<TaskModel>> getTasks(String userId) {
    return _db
        .collection('tasks')
        .where('userId', isEqualTo: userId)
        .snapshots()
        .map(
          (snap) => snap.docs.map((e) => TaskModel.fromJson(e.data())).toList(),
        );
  }
}
