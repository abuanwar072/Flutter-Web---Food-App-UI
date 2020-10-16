import 'package:flutter/material.dart';
import 'package:food_web/Components/default_button.dart';
import 'package:food_web/Screens/Home/home_screen.dart';
import 'package:food_web/Screens/Menu/menu_screen.dart';
import 'package:food_web/Screens/Order/order_now.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
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
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Image.asset(
            "assets/images/name_logo.png",
            height: 50,
            alignment: Alignment.topCenter,
          ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => HomeScreen()));
                
            },
          ),
          MenuItem(
            title: "Menu",
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => MenuScreen())
              );
            },
          ),
          DefaultButton(
            text: "Order",
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => OrderNow()));
            },
          ),
          MenuItem(
            title: "Contact",
            press: () {},
          ),
          MenuItem(
            title: "Login",
            press: () {},
          ),
        ],
      ),
    );
  }
}
