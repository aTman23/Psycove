import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneralTextField extends StatelessWidget {
  const GeneralTextField(
      {super.key,
      required this.hintText,
      this.prefixIcon,
      this.type,
      required this.controller});
  final String hintText;
  final IconData? prefixIcon;
  final TextInputType? type;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF9FAFB),
        prefixIcon: Icon(prefixIcon),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: "Helvetica",
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),

        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(
              0x33221F1F,
            ),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField(
      {super.key, required this.text, required this.controller});
  final String text;
  final TextEditingController controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool pressed = true;

  IconData icon = CupertinoIcons.eye_slash;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: pressed,
      controller: widget.controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF9FAFB),
        prefixIcon: const Icon(CupertinoIcons.lock),
        suffixIcon: IconButton(
          onPressed: () {
            setState(
              () {
                pressed = !pressed;
                if (pressed) {
                  icon = CupertinoIcons.eye_slash;
                } else {
                  icon = CupertinoIcons.eye;
                }
              },
            );
          },
          icon: Icon(icon),
        ),
        hintText: widget.text,
        hintStyle: const TextStyle(
          fontFamily: "Helvetica",
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),

        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(
              0x33221F1F,
            ),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
