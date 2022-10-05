// ignore_for_file: public_member_api_docs, sort_constructors_first
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
      ],
    );
  }
}
