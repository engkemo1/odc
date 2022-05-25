

import 'package:flutter/material.dart';

ScaffoldMessengerState customSnackBar({
  required String text,
  required BuildContext context ,
  final BorderRadius? borderRadius ,
  final EdgeInsets? padding ,
  final Duration? duration ,
  final SnackBarAction? snackBarAction
}) {
  return ScaffoldMessenger.of(context)..removeCurrentSnackBar()..showSnackBar(
      SnackBar(
          content: Text(text),
          shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(0.0)),
          padding: padding ,
          duration: duration ?? const Duration(seconds: 1) ,
          action: snackBarAction
      ));
}