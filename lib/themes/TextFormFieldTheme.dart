import 'package:flutter/material.dart';

class NtextFormFieldTheme {
  NtextFormFieldTheme._();

  //light theme
  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
          prefixIconColor: Colors.black,
          floatingLabelStyle: TextStyle(color: Color.fromARGB(255, 77, 76, 76)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.red)));

  //dark theme
  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
          prefixIconColor: Colors.white,
          floatingLabelStyle: TextStyle(color: Color.fromARGB(255, 77, 76, 76)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.white),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.red)));
}
