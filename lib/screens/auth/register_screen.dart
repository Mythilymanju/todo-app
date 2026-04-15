import 'package:flutter/material.dart';
import '../../core/services/auth_service.dart';
import '../../utils/helpers.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/app_scaffold.dart';
import '../../routes/app_routes.dart';

class RegisterScreen extends StatelessWidget {
  final name = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "Register",
      body: Column(
        children: [
          CustomTextField(controller: name, label: "Name"),
          SizedBox(height: 10),

          CustomTextField(controller: email, label: "Email"),
          SizedBox(height: 10),

          CustomTextField(controller: pass, label: "Password", isPass: true),
          SizedBox(height: 20),

          CustomButton(
            text: "Register",
            onPressed: () async {
              try {
                await AuthService().register(name.text, email.text, pass.text);

                final router = Router.of(context).routerDelegate as AppRouter;
                router.goTo(AppRoutes.login);
              } catch (e) {
                Helpers.showSnack(context, e.toString());
              }
            },
          ),
        ],
      ),
    );
  }
}
