import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:tractiv/constent/appconstent.dart';

class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});

  @override
  State<Dashboardscreen> createState() => _DashboardscreenState();
}

class _DashboardscreenState extends State<Dashboardscreen> {
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
            position: BadgePosition.topEnd(top: 12, end: 12),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.inbox_outlined),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
