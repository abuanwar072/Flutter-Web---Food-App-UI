import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/home_screen.dart';
import 'package:food_web/Screens/Menu/menu_screen.dart';
import 'package:food_web/Screens/Order/order_now.dart';
import 'package:food_web/constant.dart';

import 'Screens/Home/home_screen.dart';
import 'Screens/Menu/menu_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'KingZGrill',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/menu': (context) => MenuScreen(),
        '/order': (context) => OrderNow(),
      },
      theme: ThemeData(
        primaryColor: kPrimaryColor,

        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  
}

