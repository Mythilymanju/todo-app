import 'package:flutter/material.dart';
import '../../core/services/auth_service.dart';
import '../../utils/helpers.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/app_scaffold.dart';
import '../../routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "Login",
      body: Column(
        children: [
          CustomTextField(controller: email, label: "Email"),
          SizedBox(height: 10),

          CustomTextField(controller: pass, label: "Password", isPass: true),
          SizedBox(height: 20),

          CustomButton(
            text: "Login",
            onPressed: () async {
              try {
                await AuthService().login(email.text, pass.text);

                final router =
                    Router.of(context).routerDelegate as AppRouter;
                router.goTo(AppRoutes.home);

              } catch (e) {
                Helpers.showSnack(context, e.toString());
              }
            },
          ),

          TextButton(
            onPressed: () {
              final router =
                  Router.of(context).routerDelegate as AppRouter;
              router.goTo(AppRoutes.register);
            },
            child: Text("Register"),
          ),
        ],
      ),
    );
  }
}