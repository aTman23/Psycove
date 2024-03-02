import 'package:flutter/material.dart';

import '../../../Fonts/helveticaFont.dart';

void passwordsDontMatch(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Helvetica(
            text:"Passowrds don't match!",
            size: 20, weight: FontWeight.w500),
          content: Text(
            "Entered passwords are different",
            style: TextStyle(fontSize: 15),
          ),
        );
      });
}

void loadingScreen(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Center(child: CircularProgressIndicator());
      });
}

void emptyFields(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Helvetica(
            text:
            "Empty Fields",
            size: 20, weight: FontWeight.w500),

          content: Helvetica(
            text:"One or more fields are empty",
            size: 15,
          ),
        );
      });
}

void userNotRegistered(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Helvetica(text:
            "Try again later",
            size: 20, weight: FontWeight.w500),

          content: Helvetica(
            text:"User not registered",
            size: 15
          ),
        );
      });
}

void incompleteOTP(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Helvetica(
            text:"Incomplete OTP",
            size: 20, weight: FontWeight.w500),

          content: Helvetica(
            text:"Enter the full OTP",
            size: 15
          ),
        );
      });
}

void incorrectOTP(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Helvetica(
            text:"Incorrect OTP", size: 20, weight: FontWeight.w500),

          content: Helvetica(
            text:"Enter the correct OTP",
            size: 15
          ),
        );
      });
}

void error(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Helvetica(
            text:"Error occured",
            size: 20, weight: FontWeight.w500
          ),
          content: Helvetica(
        text:    "Try again later",
            size: 15),);


      });
}
