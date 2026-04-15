import 'package:flutter/material.dart';
import 'custom_textfield.dart';
import 'custom_button.dart';

class TaskForm extends StatelessWidget {
  final TextEditingController title;
  final TextEditingController desc;
  final VoidCallback onSubmit;

  const TaskForm({
    super.key,
    required this.title,
    required this.desc,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(controller: title, label: "Title"),
        SizedBox(height: 10),

        CustomTextField(controller: desc, label: "Description"),
        SizedBox(height: 20),

        CustomButton(
          text: "Save",
          onPressed: onSubmit,
        ),
      ],
    );
  }
}