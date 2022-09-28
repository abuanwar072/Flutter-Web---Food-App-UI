import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/constants.dart';
import 'package:food_web/Screens/Home/Components/menu_item.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: kTextColor,
  backgroundColor: kPrimaryColor,
  padding: const EdgeInsets.symmetric(horizontal: 15),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
);

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(46),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, -2),
                  blurRadius: 30,
                  color: Colors.black.withOpacity(0.16))
            ]),
        child: Row(
          children: [
            Image.asset("../../assets/images/logo.png"),
            const SizedBox(width: 5),
            Text(
              "foodi".toUpperCase(),
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            MenuItem(title: "home", press: () {}),
            MenuItem(title: "about", press: () {}),
            MenuItem(title: "pricing", press: () {}),
            MenuItem(title: "contact", press: () {}),
            MenuItem(title: "login", press: () {}),
            TextButton(
                style: flatButtonStyle,
                onPressed: () {},
                child: Text("Get Started".toUpperCase()))
          ],
        ));
  }
}
