import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tractiv/constent/appconstent.dart';
import 'package:tractiv/model/activitymodel.dart';

class Onboardscreen1 extends StatefulWidget {
  const Onboardscreen1({super.key});

  @override
  State<Onboardscreen1> createState() => _Onboardscreen1State();
}

class _Onboardscreen1State extends State<Onboardscreen1> {
  List<Activitymodel> activitymodel = [
    Activitymodel(
      aname: "Surfing",
      aimg: "assets/image/surfingimg.png",
      aicon: "assets/image/surficon.png",
      aplacename: "OCEAN BEACH",
    ),
    Activitymodel(
      aname: "Hiking",
      aimg: "assets/image/hikingimg.png",
      aicon: "assets/image/hiking.png",
      aplacename: "TORREY PINES",
    ),
    Activitymodel(
      aname: "Yoga",
      aimg: "assets/image/yogaimg.png",
      aicon: "assets/image/weighticon.png",
      aplacename: "SOLANA BEACH",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: MediaQuery.of(context).size.height / 1.8,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            "Add Your \nFavorite Activities",
            style: GoogleFonts.getFont(
              "Lato",
              color: Appconstent.ice,
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 1.0,
            width: 50.0,
            child: Container(
              color: Appconstent.snow,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "To Your Personalized Profile",
            style: GoogleFonts.getFont(
              "Lato",
              color: Appconstent.ice,
              fontSize: 16,
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 30),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: activitymodel.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    width: 130,
                    margin: const EdgeInsets.only(left: 15),
                    decoration: const BoxDecoration(
                      color: Appconstent.snow,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(activitymodel[index].aimg),
                        Positioned(
                          left: 42,
                          top: 75,
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Appconstent.snow,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Image.asset(activitymodel[index].aicon),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 45,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              activitymodel[index].aname,
                              style: GoogleFonts.getFont(
                                "Lato",
                                fontSize: 18,
                                color: Appconstent.onyx,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              activitymodel[index].aplacename,
                              style: GoogleFonts.getFont(
                                "Lato",
                                color: Appconstent.onyx,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
