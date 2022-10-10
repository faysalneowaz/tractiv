import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tractiv/constent/appconstent.dart';
import 'package:tractiv/screens/onbording/body/onboarding2.dart';
import 'package:tractiv/screens/onbording/body/onboarding3.dart';
import 'package:tractiv/screens/onbording/body/onbording1.dart';

class OnboardPageview extends StatefulWidget {
  const OnboardPageview({super.key});

  @override
  State<OnboardPageview> createState() => _OnboardPageviewState();
}

class _OnboardPageviewState extends State<OnboardPageview> {
  PageController controller = PageController();
  List<Widget> pagelist = <Widget>[
    const Onboardscreen1(),
    const Onboardscreen2(),
    const Onboardscreen3(),
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: currentindex == 0
            ? Appconstent.sand
            : currentindex == 1
                ? Appconstent.rust
                : currentindex == 2
                    ? Appconstent.sage
                    : null,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: GoogleFonts.getFont(
                "Lato",
                color: Appconstent.onyx,
              ),
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: currentindex == 0
              ? Appconstent.sand
              : currentindex == 1
                  ? Appconstent.rust
                  : currentindex == 2
                      ? Appconstent.sage
                      : null,
        ),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                itemBuilder: (context, index) => pagelist[index],
                // children: pagelist,
                scrollDirection: Axis.horizontal,

                // reverse: true,
                // physics: BouncingScrollPhysics(),
                controller: controller,
                onPageChanged: (num) {
                  setState(() {
                    currentindex = num;
                  });
                },
                itemCount: pagelist.length,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < pagelist.length; i++)
                  if (i == currentindex) ...[_indicator(true)] else
                    _indicator(false),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 35, left: 65, right: 65),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 5.0,
                  fixedSize: const Size(25, 55),
                  backgroundColor: Appconstent.snow,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
                child: Text(
                  "Next",
                  style: GoogleFonts.getFont(
                    "Lato",
                    fontSize: 16,
                    color: Appconstent.onyx,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < pagelist.length; i++) {
      list.add(i == currentindex ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return Container(
      height: 10,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 7.0),
        height: isActive ? 10 : 8.0,
        width: isActive ? 12 : 8.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              isActive ? Appconstent.snow : Appconstent.onyx.withOpacity(0.5),
        ),
      ),
    );
  }
}
