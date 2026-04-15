import 'package:flutter/material.dart';
import '../core/services/firestore_service.dart';

class StatusDropdown extends StatelessWidget {
  final String id;
  final String status;

  const StatusDropdown({super.key, required this.id, required this.status});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: status,
      items: ['pending', 'in_progress', 'completed']
          .map((e) => DropdownMenuItem(value: e, child: Text(e)))
          .toList(),
      onChanged: (val) {
        FirestoreService().updateStatus(id, val.toString());
      },
    );
  }
}