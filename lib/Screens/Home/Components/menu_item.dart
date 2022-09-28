import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/constants.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final void Function() press;
  const MenuItem({super.key, required this.title, required this.press});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(title.toUpperCase(),
            style: TextStyle(
                color: kTextColor.withOpacity(0.3),
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
