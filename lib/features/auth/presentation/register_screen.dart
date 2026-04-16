import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/services/auth_service.dart';
import '../../../core/widgets/common_button.dart';
import '../../../core/widgets/common_textfield.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final name = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();
  final auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CommonTextField(controller: name, hint: "Name"),
            const SizedBox(height: 10),
            CommonTextField(controller: email, hint: "Email"),
            const SizedBox(height: 10),
            CommonTextField(controller: pass, hint: "Password"),

            const SizedBox(height: 20),
            CommonButton(
              text: "Register",
              onTap: () async {
                await auth.register(name.text, email.text, pass.text);
                context.go('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
