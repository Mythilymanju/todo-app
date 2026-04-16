import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/services/auth_service.dart';
import '../../../core/services/task_service.dart';
import '../data/models/task_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  final auth = AuthService();
  final service = TaskService();

  String filter = "all";

  @override
  Widget build(BuildContext context) {
    final user = auth.currentUser!;

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tasks"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await auth.logout();
              context.go('/');
            },
          )
        ],
      ),

      body: Column(
        children: [
          // 🔥 FILTER BUTTONS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () => setState(() => filter = "all"),
                  child: const Text("All")),
              TextButton(
                  onPressed: () => setState(() => filter = "pending"),
                  child: const Text("Pending")),
              TextButton(
                  onPressed: () => setState(() => filter = "completed"),
                  child: const Text("Completed")),
            ],
          ),

          Expanded(
            child: StreamBuilder<List<TaskModel>>(
              stream: service.getTasks(user.uid),
              builder: (_, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }

                var tasks = snapshot.data!;

                // 🔥 FILTER
                if (filter != "all") {
                  tasks = tasks.where((t) => t.status == filter).toList();
                }

                return ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (_, i) {
                    final task = tasks[i];

                    return ListTile(
                      title: Text(task.title),
                      subtitle: Text(task.status),

                      // EDIT
                      onTap: () => context.go('/task', extra: task),

                      // DELETE
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () async {
                          await service.deleteTask(task.id);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/task'),
        child: const Icon(Icons.add),
      ),
    );
  }
}