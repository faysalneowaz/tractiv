import 'package:flutter/material.dart';
import 'package:tractiv/constent/appconstent.dart';

class Whiteiconbtn extends StatelessWidget {
  String? text;
  IconData? icon;
  double radius;
  double height;
  double width;

  Whiteiconbtn({
    Key? key,
    this.text,
    required this.icon,
    required this.radius,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: Appconstent.onyx,
      ),
      label: Text(
        text!,
        style: const TextStyle(
          color: Appconstent.onyx,
        ),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 5.0,
        fixedSize: Size(width, height),
        backgroundColor: Appconstent.snow,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}
