import 'package:flutter/material.dart';

import '../../../Fonts/helveticaFont.dart';

void signInInvalidCredentials(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Helvetica(text:
            "Wrong Credentials",
            size: 20, weight: FontWeight.w500),

          content: Helvetica(
            text:"Invalid Email or Password!",
            size: 15
          ),
        );
      });
}

void emptyFields(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Helvetica(
            text:"Empty Fields",
            size: 20, weight: FontWeight.w500,
          ),
          content: Helvetica(
            text:"One or more fields are empty",
            size: 15,
          ),
        );
      });
}
