import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  static toastMessages(String tostmessage) {
    // Fluttertoast.showToast(msg: tostmessage);
  }

  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          message: message,
          backgroundColor: Colors.red,
          title: 'SAD',
          messageColor: Colors.black,
          duration: const Duration(seconds: 3),

          )..show(context));
  }
}
