import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tractiv/constent/appconstent.dart';
import 'package:tractiv/screens/signinsignup/signinsignup.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appconstent.drab,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/image_20.png"),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Image.asset("assets/image/logo_stacked_white.png"),
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height / 3,
            margin: const EdgeInsets.only(top: 65.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Track Your \nActive Lifestyle",
                  style: GoogleFonts.getFont(
                    'Lato',
                    fontSize: 28,
                    color: Appconstent.snow,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 1.0,
                  width: 30.0,
                  child: Container(
                    color: Appconstent.snow,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "With goal a driven approach",
                  style: GoogleFonts.getFont(
                    'Lato',
                    fontSize: 16,
                    color: Appconstent.snow,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Signinsignupscreen()),
              );
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 4.33,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 60,
                  color: Appconstent.rust,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(""),
                      Text(
                        "GET STARTED",
                        style: GoogleFonts.getFont("Lato",
                            fontSize: 18, color: Appconstent.snow),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: const BoxDecoration(
                          color: Appconstent.rustshade,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Appconstent.snow,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
