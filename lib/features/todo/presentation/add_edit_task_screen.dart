import 'package:flutter/material.dart';
import '../../../core/services/auth_service.dart';
import '../../../core/services/task_service.dart';
import '../data/models/task_model.dart';

class AddEditTaskScreen extends StatefulWidget {
  final TaskModel? task;

  const AddEditTaskScreen({super.key, this.task});

  @override
  State<AddEditTaskScreen> createState() => _State();
}

class _State extends State<AddEditTaskScreen> {
  final title = TextEditingController();
  final desc = TextEditingController();
  String status = "pending";

  final service = TaskService();
  final auth = AuthService();

  @override
  void initState() {
    super.initState();

    if (widget.task != null) {
      title.text = widget.task!.title;
      desc.text = widget.task!.description;
      status = widget.task!.status;
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = auth.currentUser!;

    return Scaffold(
      appBar: AppBar(title: const Text("Task")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: title,
              decoration: const InputDecoration(labelText: "Title"),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: desc,
              decoration: const InputDecoration(labelText: "Description"),
            ),

            const SizedBox(height: 10),

            // 🔥 STATUS DROPDOWN
            DropdownButton<String>(
              value: status,
              isExpanded: true,
              items: [
                "pending",
                "in_progress",
                "completed",
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (v) => setState(() => status = v!),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                if (widget.task == null) {
                  // ADD
                  final task = TaskModel(
                    (b) => b
                      ..id = DateTime.now().millisecondsSinceEpoch.toString()
                      ..title = title.text
                      ..description = desc.text
                      ..userId = user.uid
                      ..status = status
                      ..createdAt = DateTime.now(),
                  );

                  await service.addTask(task);
                } else {
                  // UPDATE
                  final updated = widget.task!.rebuild(
                    (b) => b
                      ..title = title.text
                      ..description = desc.text
                      ..status = status
                      ..updatedAt = DateTime.now(),
                  );

                  await service.updateTask(updated);
                }

                Navigator.pop(context);
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
