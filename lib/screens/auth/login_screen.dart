import 'package:flutter/material.dart';
import '../../core/services/auth_service.dart';
import '../../utils/helpers.dart';
import '../../widgets/custom_textfield.dart';
import '../home/home_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(controller: email, label: "Email"),
            SizedBox(height: 10),
            CustomTextField(controller: pass, label: "Password", isPass: true),

            ElevatedButton(
              onPressed: () async {
                try {
                  await AuthService().login(email.text, pass.text);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => HomeScreen()),
                  );
                } catch (e) {
                  Helpers.showSnack(context, e.toString());
                }
              },
              child: Text("Login"),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => RegisterScreen()),
                );
              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
