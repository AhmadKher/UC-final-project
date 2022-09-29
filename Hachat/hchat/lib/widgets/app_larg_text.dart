import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppLArgeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppLArgeText(
      {Key? key, required this.text, this.color = Colors.white, this.size = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
