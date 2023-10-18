import 'package:flutter/material.dart';

class NOutlinedButtonTheme {
  NOutlinedButtonTheme._();

  //Light theme
  static final lightOutlinedbuttontheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      minimumSize: const Size(700, 20),
      maximumSize: const Size(40, 600),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      side: const BorderSide(color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: 10),
    ),
  );

  //Dark theme
  static final darkOutlinedbuttontheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 10),
    ),
  );
}
