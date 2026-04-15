import 'package:flutter/material.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/register_screen.dart';
import '../screens/home/home_screen.dart';

class AppRoutes {
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
}

class AppRouter extends RouterDelegate<String>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<String> {

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  String currentRoute = AppRoutes.login;

  void goTo(String route) {
    currentRoute = route;
    notifyListeners();
  }

  @override
  String get currentConfiguration => currentRoute;

  @override
  Widget build(BuildContext context) {
    List<Page> pages = [];

    switch (currentRoute) {
      case AppRoutes.login:
        pages = [MaterialPage(child: LoginScreen())];
        break;

      case AppRoutes.register:
        pages = [
          MaterialPage(child: LoginScreen()),
          MaterialPage(child: RegisterScreen()),
        ];
        break;

      case AppRoutes.home:
        pages = [MaterialPage(child: HomeScreen())];
        break;

      default:
        pages = [MaterialPage(child: LoginScreen())];
    }

    return Navigator(
      key: navigatorKey,
      pages: pages,
      onPopPage: (route, result) {
        if (!route.didPop(result)) return false;

        currentRoute = AppRoutes.login;
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(String configuration) async {
    currentRoute = configuration;
  }
}