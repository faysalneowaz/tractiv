import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tractiv/constent/appconstent.dart';
import 'package:tractiv/constent/whiteiconbutton.dart';
import 'package:tractiv/screens/onbording/onboardpageview.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
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
          pressed: () {
            showAlertDialog(context);
          },
          icon: Icons.arrow_forward_ios,
          text: "SIGN IN",
          radius: 30.0,
          width: MediaQuery.of(context).size.width,
          height: 60,
        ),
      ],
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text(
        "Submit",
        style: GoogleFonts.getFont(
          "Lato",
          color: Appconstent.onyx,
          fontWeight: FontWeight.w900,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
        // OnboardPageview
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OnboardPageview()),
        );
      },
    );

    Widget cancelButton = TextButton(
      child: Text(
        "Cancel",
        style: GoogleFonts.getFont(
          "Lato",
          color: Appconstent.rust,
          fontWeight: FontWeight.w900,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
        // OnboardPageview
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Appconstent.sand,
      title: Text(
        "One Time Password",
        style: GoogleFonts.getFont(
          "Lato",
          color: Appconstent.onyx,
        ),
      ),
      content: TextField(
        style: GoogleFonts.getFont(
          "Lato",
          color: Appconstent.onyx,
        ),
        cursorColor: Appconstent.onyx,
        decoration: InputDecoration(
          enabledBorder: outlinemethod(),
          focusedBorder: outlinemethod(),
          border: outlinemethod(),
          labelText: 'Email/Phone',
          hintText: 'Enter Email or Phone',
          hintStyle: GoogleFonts.getFont("Lato", color: Appconstent.onyx),
          labelStyle: GoogleFonts.getFont("Lato", color: Appconstent.onyx),
          focusColor: Appconstent.fossil,
        ),
      ),
      actions: [
        cancelButton,
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return alert;
      },
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
