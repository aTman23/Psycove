import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatelessWidget {
  const DropDownMenu(
      {super.key,
      required this.text,
      required this.icon,
      required this.list,
      required this.controller});
  final String text;
  final IconData icon;
  final List<DropdownMenuEntry<dynamic>> list;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      dropdownMenuEntries: list,
      width: 330,
      controller: controller,
      onSelected: (value) {
        controller.text = value;
      },
      inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFFF9FAFB),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
      label: Helvetica(
        text: text,
        size: 14,
        weight: FontWeight.w400,
      ),
      leadingIcon: Icon(
        icon,
      ),
    );
  }
}
