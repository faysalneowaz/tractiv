import 'package:flutter/material.dart';
import 'package:tractiv/constent/appconstent.dart';

class Signinsignupscreen extends StatefulWidget {
  const Signinsignupscreen({super.key});

  @override
  State<Signinsignupscreen> createState() => _SigninsignupscreenState();
}

class _SigninsignupscreenState extends State<Signinsignupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        decoration: const BoxDecoration(
          color: Appconstent.drab,
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/logo_stacked_color.png"),
            ],
          ),
        ),
      ),
    );
  }
}
