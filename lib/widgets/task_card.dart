import 'package:flutter/material.dart';
import '../screens/tasks/add_edit_task_screen.dart';
import '../core/services/firestore_service.dart';

class TaskCard extends StatelessWidget {
  final dynamic task;

  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    final data = task.data(); 

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        title: Text(data['title'] ?? ''),
        subtitle: Text(data['description'] ?? ''),

        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

          
            IconButton(
              icon: const Icon(Icons.edit),
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
              icon: const Icon(Icons.delete),
              onPressed: () async {
                await FirestoreService().deleteTask(task.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}