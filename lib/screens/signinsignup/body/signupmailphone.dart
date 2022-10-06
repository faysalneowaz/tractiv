import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tractiv/constent/appconstent.dart';
import 'package:tractiv/constent/whiteiconbutton.dart';

class Signupemailphone extends StatefulWidget {
  const Signupemailphone({super.key});

  @override
  State<Signupemailphone> createState() => _SignupemailphoneState();
}

class _SignupemailphoneState extends State<Signupemailphone> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Whiteiconbtn(
          icon: Icons.email_outlined,
          text: "SIGN UP WITH EMAIL",
          radius: 30.0,
          width: MediaQuery.of(context).size.width,
          height: 60,
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              side: const BorderSide(width: 2, color: Appconstent.sage),
              fixedSize: Size(MediaQuery.of(context).size.width, 60)),
          child: Text(
            "SIGN UP WITH PHONE NUMBER",
            style: GoogleFonts.getFont(
              "Lato",
              color: Appconstent.snow,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
