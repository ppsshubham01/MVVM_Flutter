import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';

class Utils {
  static void focusFieldChangeUi(BuildContext context,
      FocusNode currentFocusnode, FocusNode nextFocusNode) {
    currentFocusnode.unfocus();
    FocusScope.of(context).requestFocus(nextFocusNode);
  }

  static toastMessages(String tostmessage) {
    // Fluttertoast.showToast(msg: tostmessage);
  }

  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          message: message,
          forwardAnimationCurve: Curves.decelerate,
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          flushbarPosition: FlushbarPosition.TOP,
          borderRadius: BorderRadius.circular(20),
          icon: const Icon(
            Icons.error,
            size: 28,
            color: Colors.white,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.all(15),
          backgroundColor: Colors.red,
          title: 'SAD',
          messageColor: Colors.black,
          duration: const Duration(seconds: 3),
        )..show(context));
  }

  static snackBAr(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.greenAccent, content: Text(message)));
  }
}
