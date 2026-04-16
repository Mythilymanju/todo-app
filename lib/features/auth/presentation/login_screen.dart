import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/services/auth_service.dart';
import '../../../core/widgets/common_button.dart';
import '../../../core/widgets/common_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final email = TextEditingController();
  final pass = TextEditingController();
  final auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CommonTextField(controller: email, hint: "Email"),
            const SizedBox(height: 10),
            CommonTextField(controller: pass, hint: "Password"),

            const SizedBox(height: 20),
            CommonButton(
              text: "Login",
              onTap: () async {
                await auth.login(email.text, pass.text);
                context.go('/home');
              },
            ),

            TextButton(
              onPressed: () => context.go('/register'),
              child: const Text("Create Account"),
            ),
          ],
        ),
      ),
    );
  }
}
