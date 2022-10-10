import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:tractiv/constent/appconstent.dart';

class Onboardscreen3 extends StatefulWidget {
  const Onboardscreen3({super.key});

  @override
  State<Onboardscreen3> createState() => _Onboardscreen3State();
}

class _Onboardscreen3State extends State<Onboardscreen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(12.0),
      margin: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height / 1.8,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            "View Your \nWeekly Progress",
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
            "An interactive tracking calendar",
            style: GoogleFonts.getFont(
              "Lato",
              color: Appconstent.ice,
              fontSize: 16,
            ),
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(
              left: 30,
            ),
            decoration: const BoxDecoration(
              color: Appconstent.snow,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SfCalendar(
                  view: CalendarView.week,
                  // timeSlotViewSettings: ,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
