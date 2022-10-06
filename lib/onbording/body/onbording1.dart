import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tractiv/constent/appconstent.dart';

class Onboardscreen1 extends StatefulWidget {
  const Onboardscreen1({super.key});

  @override
  State<Onboardscreen1> createState() => _Onboardscreen1State();
}

class _Onboardscreen1State extends State<Onboardscreen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: MediaQuery.of(context).size.height / 1.8,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            "Add Your \nFavorite Activities",
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
            "To Your Personalized Profile",
            style: GoogleFonts.getFont(
              "Lato",
              color: Appconstent.ice,
              fontSize: 16,
            ),
          ),
          ListView.builder(
              itemCount: 0,
              itemBuilder: (context, index) {
                return Container(
                  height: 10,
                  width: 10,
                );
              })
        ],
      ),
    );
  }
}
