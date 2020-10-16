import 'package:flutter/material.dart';
import 'package:food_web/Components/default_button.dart';

import 'menu_item.dart';

class CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 35,
            alignment: Alignment.centerLeft,
          ),
          // SizedBox(width: MediaQuery.of(context).size.width * 2 / 3,),
          Expanded(
            child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(Icons.menu),
                )),
          ),
          // SizedBox(width: 5),
          // Image.asset(
          //   "assets/images/name_logo.png",
          //   height: 50,
          //   alignment: Alignment.topCenter,
          // ),
          // Spacer(),
          // MenuItem(
          //   title: "Home",
          //   press: () {},
          // ),
          // MenuItem(
          //   title: "Menu",
          //   press: () {},
          // ),
          // MenuItem(
          //   title: "Order",
          //   press: () {},
          // ),
          // MenuItem(
          //   title: "Contact",
          //   press: () {},
          // ),
          // MenuItem(
          //   title: "Login",
          //   press: () {},
          // ),
          // DefaultButton(
          //   text: "Get Started",
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}
