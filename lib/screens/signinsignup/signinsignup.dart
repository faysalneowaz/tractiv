import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tractiv/constent/appconstent.dart';

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
    // TODO: implement initState
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/logo_stacked_color.png"),
            const SizedBox(
              height: 50.0,
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
                  height: 15.0,
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
              height: 50.0,
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
            SizedBox(
              height: 100,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Text("Tab1"),
                  Text("Tab1"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
