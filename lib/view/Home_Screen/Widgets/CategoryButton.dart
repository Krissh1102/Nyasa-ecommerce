import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton(
      {super.key, required this.imagee, required this.text, required this.tap});

  final String text;
  final String imagee;
  final tap;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 200,
      width: 175,
      child: GestureDetector(
        onTap: tap,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  height: height * 0.15,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 0, 0, 0),
                      gradient: const LinearGradient(colors: [
                        Colors.black,
                        Color.fromARGB(255, 62, 61, 61),
                        Color.fromARGB(255, 0, 0, 0),
                      ], begin: Alignment.bottomLeft)),
                ),
              ],
            ),
            Positioned(
              child: SizedBox(
                height: 300,
                child: Image(
                  image: AssetImage(
                    imagee,
                  ),
                  width: 1500,
                  height: 1500,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.04, 0.7),
              child: Text(
                text,
                style: GoogleFonts.roboto(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
