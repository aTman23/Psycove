import 'package:flutter/material.dart';

import '../../../Fonts/helveticaFont.dart';

class EditProfileDialog extends StatefulWidget {
  final String initialName;

  const EditProfileDialog({super.key, required this.initialName});

  @override
  _EditProfileDialogState createState() => _EditProfileDialogState();
}

class _EditProfileDialogState extends State<EditProfileDialog> {
  late TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Helvetica(text:'Edit Profile Name'),
      content: TextField(
        controller: _nameController,
        decoration: const InputDecoration(labelText: 'New Name'),
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
            Navigator.of(context).pop(_nameController.text); // Pass the edited name back to the page
          },
          child: const Helvetica(text: 'Save'),
        ),
      ],
    );
  }
}