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
        aicon: "assets/image/surficon.png"),
    Activitymodel(
        aname: "Hiking",
        aimg: "assets/image/hikingimg.png",
        aicon: "assets/image/hiking.png"),
    Activitymodel(
        aname: "Yoga",
        aimg: "assets/image/yogaimg.png",
        aicon: "assets/image/weighticon.png"),
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
            color: Colors.blue,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: activitymodel.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    width: 130,
                    margin: const EdgeInsets.only(left: 15),
                    color: Colors.amber,
                    child: ListTile(
                      title: Text(activitymodel[index].aname),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
