import 'package:flutter/material.dart';
import 'package:tractiv/constent/appconstent.dart';

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
            height: MediaQuery.of(context).size.height / 3,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                color: Appconstent.rust,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
