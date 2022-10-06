import 'package:flutter/material.dart';
import 'package:tractiv/constent/appconstent.dart';

class Whiteiconbtn extends StatelessWidget {
  String? text;
  IconData? icon;
  double radius;
  double height;
  double width;
  void Function()? pressed;

  Whiteiconbtn({
    Key? key,
    this.text,
    this.icon,
    required this.radius,
    required this.height,
    required this.width,
    this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: pressed,
      icon: Icon(
        icon,
        color: Appconstent.onyx,
        size: 25,
      ),
      label: Text(
        text!,
        style: const TextStyle(
          color: Appconstent.onyx,
          fontSize: 16,
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
