import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/menu_item.dart';
import 'package:food_web/Screens/Menu/menu_screen.dart';
import 'package:food_web/Screens/Order/order_now.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Image.asset(
              "assets/images/name_logo.png",
              height: 50,
              alignment: Alignment.topCenter,
            ),
          ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {

            },
          ),
          Spacer(),
          MenuItem(
            title: "Menu",
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => MenuScreen())
              );
            },
          ),
          MenuItem(
            title: "Order",
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => OrderNow())
              );
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
