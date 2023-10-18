import 'package:nyasa/constents/consts.dart';

Widget applogoo() {
  return Image.asset(appLogoImg)
      .box
      .size(250, 250)
      .padding(const EdgeInsets.all(7))
      .roundedFull
      .make();
}
