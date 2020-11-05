import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/app_bar.dart';
import 'package:food_web/Screens/Home/Components/body.dart';
import 'package:food_web/Screens/Home/Components/drawer.dart';

import 'Components/app_bar_mobile.dart';
import 'Components/body_mobile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    print(size.width);
    return Scaffold(
      drawer: CustomDrawer(),

      body: Container(
        height: size.height,
        padding: EdgeInsets.only(left:20.0),
        // it will take full width
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/siteBG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            getAppBar(size.width),
            Spacer(),
            // It will cover 1/3 of free spaces
            getBody(size.width),
            Spacer(
              flex: 2,
            ),
            // it will cover 2/3 of free spaces
          ],
        ),
      ),
    );
  }

  Widget getAppBar(double width){
    if(width > 760)
      return CustomAppBar();
    else 
      return CustomAppBarMobile();
  }

  Widget getBody(double width){
    if(width > 790){
      return Body();
    }
    else{
      return BodyOfMobile();
    }
  }
}
