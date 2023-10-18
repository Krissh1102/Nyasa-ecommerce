import 'package:nyasa/constents/consts.dart';
import 'package:nyasa/themes/Outlinedbuttontheme.dart';
import 'package:nyasa/themes/Elevatedbutton.dart';
import 'package:nyasa/themes/TextFormFieldTheme.dart';

class Napptheme {
  Napptheme._();

  //Light theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    textTheme: TextTheme(displayMedium: GoogleFonts.lato(color: Colors.black)),
    outlinedButtonTheme: NOutlinedButtonTheme.lightOutlinedbuttontheme,
    elevatedButtonTheme: NElevatedButton.lightElevatedbutton,
    inputDecorationTheme: NtextFormFieldTheme.lightInputDecorationTheme,
  );

  //Dark theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    textTheme: TextTheme(displayMedium: GoogleFonts.lato(color: Colors.white)),
    outlinedButtonTheme: NOutlinedButtonTheme.darkOutlinedbuttontheme,
    elevatedButtonTheme: NElevatedButton.darkElevatedbutton,
    inputDecorationTheme: NtextFormFieldTheme.darkInputDecorationTheme,
  );
}
