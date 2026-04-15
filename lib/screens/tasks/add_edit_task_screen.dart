import 'package:flutter/material.dart';
import '../../core/services/firestore_service.dart';
import '../../widgets/app_scaffold.dart';
import '../../widgets/task_form.dart';

class AddEditTaskScreen extends StatelessWidget {
  final dynamic task;

  AddEditTaskScreen({this.task});

  final title = TextEditingController();
  final desc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (task != null) {
      final data = task.data(); // ✅ FIX

      title.text = data['title'] ?? '';
      desc.text = data['description'] ?? '';
    }

    return AppScaffold(
      title: task == null ? "Add Task" : "Edit Task",
      body: TaskForm(
        title: title,
        desc: desc,
        onSubmit: () async {
          if (task == null) {
            await FirestoreService().addTask(title.text, desc.text);
          } else {
            await FirestoreService().updateTask(task.id, title.text, desc.text);
          }
          Navigator.pop(context);
        },
      ),
    );
  }
}
