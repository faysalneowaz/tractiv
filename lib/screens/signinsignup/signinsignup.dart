import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tractiv/constent/appconstent.dart';
import 'package:tractiv/screens/signinsignup/body/signin.dart';
import 'package:tractiv/screens/signinsignup/body/signupmailphone.dart';

class Signinsignupscreen extends StatefulWidget {
  const Signinsignupscreen({super.key});

  @override
  State<Signinsignupscreen> createState() => _SigninsignupscreenState();
}

class _SigninsignupscreenState extends State<Signinsignupscreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

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
        child: ListView(
          // physics: NeverScrollableScrollPhysics(),
          children: [
            Image.asset("assets/image/logo_stacked_color.png"),
            const SizedBox(
              height: 15.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Create a\nNew Account",
                  style: GoogleFonts.getFont(
                    "Lato",
                    fontSize: 35,
                    color: Appconstent.snow,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 1.0,
                  width: 30.0,
                  child: Container(
                    color: Appconstent.snow,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "For the best experience \nwith Tractiv",
                  style: GoogleFonts.getFont(
                    "Lato",
                    fontSize: 21,
                    color: Appconstent.snow,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Material(
              elevation: 5,
              color: Appconstent.drab,
              child: TabBar(
                controller: _tabController,
                indicatorColor: Appconstent.rust, // here is red underline
                labelPadding: const EdgeInsets.all(15),
                unselectedLabelColor: Appconstent.drabshade,
                labelStyle: GoogleFonts.getFont(
                  "Lato",
                  fontWeight: FontWeight.w900,
                ),
                tabs: const [
                  Text('Sign Up'),
                  Text('Log In'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.all(8.0),
              height: 180,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Signupemailphone(),
                  Signin(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
