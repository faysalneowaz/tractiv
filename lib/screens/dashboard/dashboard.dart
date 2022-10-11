import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tractiv/constent/appconstent.dart';

class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});

  @override
  State<Dashboardscreen> createState() => _DashboardscreenState();
}

class _DashboardscreenState extends State<Dashboardscreen>
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
      appBar: AppBar(
        title: Image.asset(
          "assets/image/logo_header_wide.png",
          height: 50,
          width: 90,
        ),
        centerTitle: true,
        backgroundColor: Appconstent.snow,
        iconTheme: const IconThemeData(color: Appconstent.drab),
        actions: [
          Badge(
            position: BadgePosition.topEnd(top: 5, end: 5),
            badgeColor: Appconstent.sage,
            badgeContent: Text(
              "2",
              style: GoogleFonts.getFont(
                "Lato",
                color: Appconstent.ice,
                fontSize: 14,
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.inbox_outlined),
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Appconstent.rust, // here is red underline
          labelPadding: const EdgeInsets.all(15),
          unselectedLabelColor: Appconstent.drabshade,
          labelColor: Appconstent.drab,

          labelStyle: GoogleFonts.getFont(
            "Lato",
            fontWeight: FontWeight.w900,
          ),
          tabs: const [
            Text('You'),
            Text('Friends'),
          ],
        ),
      ),
      drawer: Drawer(),
      // bottomNavigationBar: ,
      body: TabBarView(
        controller: _tabController,
        children: [
          const Center(
            child: Text("Tab1"),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [],
                ),
                Row(
                  children: [],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
