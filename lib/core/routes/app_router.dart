import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/login_screen.dart';
import '../../features/auth/presentation/register_screen.dart';
import '../../features/todo/presentation/home_screen.dart';
import '../../features/todo/presentation/add_edit_task_screen.dart';
import '../../features/todo/data/models/task_model.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (_, __) => LoginScreen()),
      GoRoute(path: '/register', builder: (_, __) => RegisterScreen()),
      GoRoute(path: '/home', builder: (_, __) => HomeScreen()),
      GoRoute(
        path: '/task',
        builder: (context, state) {
          final task = state.extra as TaskModel?;
          return AddEditTaskScreen(task: task);
        },
      ),
    ],
  );
}