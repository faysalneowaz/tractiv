import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tractiv/constent/appconstent.dart';

class Onboardscreen2 extends StatefulWidget {
  const Onboardscreen2({super.key});

  @override
  State<Onboardscreen2> createState() => _Onboardscreen2State();
}

class _Onboardscreen2State extends State<Onboardscreen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: MediaQuery.of(context).size.height / 1.8,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            "Easily Track \nAny Activity",
            style: GoogleFonts.getFont(
              "Lato",
              color: Appconstent.ice,
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 1.0,
            width: 50.0,
            child: Container(
              color: Appconstent.snow,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Log & record your activities",
            style: GoogleFonts.getFont(
              "Lato",
              color: Appconstent.ice,
              fontSize: 16,
            ),
          ),
          Container(
            height: 120,
            width: 120,
            margin: const EdgeInsets.only(top: 65),
            decoration: BoxDecoration(
              color: Appconstent.rust,
              borderRadius: BorderRadius.circular(65),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 25.0,
                  spreadRadius: 8.0,
                  color: Colors.black45,
                ),
              ],
            ),
            child: Image.asset("assets/image/icononboard.png"),
          ),
        ],
      ),
    );
  }
}
