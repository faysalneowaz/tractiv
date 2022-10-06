import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tractiv/constent/appconstent.dart';
import 'package:tractiv/constent/whiteiconbutton.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        const SizedBox(
          height: 10,
        ),
        TextField(
          style: GoogleFonts.getFont(
            "Lato",
            color: Appconstent.fossil,
          ),
          cursorColor: Appconstent.fossil,
          decoration: InputDecoration(
            enabledBorder: outlinemethod(),
            focusedBorder: outlinemethod(),
            border: outlinemethod(),
            labelText: 'Email/Phone',
            hintText: 'Enter Email or Phone',
            hintStyle: GoogleFonts.getFont("Lato", color: Appconstent.fossil),
            labelStyle: GoogleFonts.getFont("Lato", color: Appconstent.fossil),
            focusColor: Appconstent.fossil,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Whiteiconbtn(
          icon: Icons.arrow_forward_ios,
          text: "SIGN IN",
          radius: 30.0,
          width: MediaQuery.of(context).size.width,
          height: 60,
        ),
      ],
    );
  }

  OutlineInputBorder outlinemethod() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Appconstent.fossil,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(25.0),
      ),
    );
  }
}
