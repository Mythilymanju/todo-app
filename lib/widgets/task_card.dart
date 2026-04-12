import 'package:flutter/material.dart';
import '../core/services/firestore_service.dart';
import '../screens/tasks/add_edit_task_screen.dart';
import 'status_dropdown.dart';

class TaskCard extends StatelessWidget {
  final dynamic task;

  TaskCard({required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(task['title']),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(task['description']),
            StatusDropdown(id: task.id, status: task['status']),
          ],
        ),
        leading: Checkbox(
          value: task['status'] == 'completed',
          onChanged: (val) {
            FirestoreService().updateStatus(
              task.id,
              val! ? 'completed' : 'pending',
            );
          },
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddEditTaskScreen(task: task),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                FirestoreService().deleteTask(task.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
