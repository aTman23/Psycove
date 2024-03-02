import 'package:flutter/material.dart';

import '../../../Fonts/helveticaFont.dart';

class EditUserDialog extends StatefulWidget {
  final String userName;
   const EditUserDialog({super.key, required this.userName});

  @override
  State<EditUserDialog> createState() => _EditUserDialogState();
}

class _EditUserDialogState extends State<EditUserDialog> {
  late TextEditingController _userController;
  @override
  void initState() {
    super.initState();
    _userController = TextEditingController(text: widget.userName);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Helvetica(text:'Edit User Name'),
      content: TextField(
        controller: _userController,
        decoration: const InputDecoration(labelText: 'New User Name'),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Helvetica(text: 'Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(_userController.text); // Pass the edited name back to the page
          },
          child: const Helvetica(text: 'Save'),
        ),
      ],
    );
  }
}
