import 'package:flutter/material.dart';
import '../../core/services/firestore_service.dart';

class AddEditTaskScreen extends StatelessWidget {
  final dynamic task;

  AddEditTaskScreen({this.task});

  final title = TextEditingController();
  final desc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (task != null) {
      title.text = task['title'];
      desc.text = task['description'];
    }

    return Scaffold(
      appBar: AppBar(title: Text(task == null ? "Add Task" : "Edit Task")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: title, decoration: InputDecoration(labelText: "Title")),
            TextField(controller: desc, decoration: InputDecoration(labelText: "Description")),

            ElevatedButton(
              onPressed: () async {
                if (task == null) {
                  await FirestoreService()
                      .addTask(title.text, desc.text);
                } else {
                  await FirestoreService()
                      .updateTask(task.id, title.text, desc.text);
                }
                Navigator.pop(context);
              },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}