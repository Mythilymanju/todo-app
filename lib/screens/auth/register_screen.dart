import 'package:flutter/material.dart';
import '../../core/services/auth_service.dart';
import '../../utils/helpers.dart';
import '../../widgets/custom_textfield.dart';

class RegisterScreen extends StatelessWidget {
  final name = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(controller: name, label: "Name"),
            CustomTextField(controller: email, label: "Email"),
            CustomTextField(controller: pass, label: "Password", isPass: true),

            ElevatedButton(
              onPressed: () async {
                try {
                  await AuthService().register(
                    name.text,
                    email.text,
                    pass.text,
                  );
                  Navigator.pop(context);
                } catch (e) {
                  Helpers.showSnack(context, e.toString());
                }
              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
