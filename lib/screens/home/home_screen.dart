import 'package:flutter/material.dart';
import '../../core/services/auth_service.dart';
import '../../core/services/firestore_service.dart';
import '../../widgets/task_card.dart';
import '../../widgets/app_scaffold.dart';
import '../../routes/app_routes.dart';
import '../tasks/add_edit_task_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String filter = 'all';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "My Tasks",

      actions: [
        IconButton(
          icon: Icon(Icons.logout),
          onPressed: () async {
            await AuthService().logout();

            final router = Router.of(context).routerDelegate as AppRouter;
            router.goTo(AppRoutes.login);
          },
        ),
      ],

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AddEditTaskScreen()),
          );
        },
        child: Icon(Icons.add),
      ),

      body: Column(
        children: [
          DropdownButton<String>(
            value: filter,
            isExpanded: true,
            items: [
              'all',
              'pending',
              'in_progress',
              'completed',
            ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: (val) {
              setState(() {
                filter = val!;
              });
            },
          ),

          Expanded(
            child: StreamBuilder(
              stream: FirestoreService().getTasks(filter),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }

                if (!snapshot.hasData || snapshot.data == null) {
                  return Center(child: Text("No tasks"));
                }

                final tasks = snapshot.data!.docs;

                if (tasks.isEmpty) {
                  return Center(child: Text("No tasks"));
                }

                return ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (_, i) => TaskCard(task: tasks[i]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
