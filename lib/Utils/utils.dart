import 'dart:html';

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  toastMessage(String message) {
    Fluttertoast.showToast(backgroundColor: Colors.red, msg: message);
  }

  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          message: message,
          backgroundColor: Colors.green,
          duration: Duration(seconds: 5),
        )..show(context));
  }

  static snakBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(
          backgroundColor: Colors.blue,
          
          content: Text(message)));
  }
}
