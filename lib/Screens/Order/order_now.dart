import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/app_bar.dart';
import 'package:food_web/Screens/Home/Components/app_bar_mobile.dart';
import 'package:food_web/Screens/Home/Components/drawer.dart';

class OrderNow extends StatefulWidget {
  OrderNow({Key key}) : super(key: key);

  @override
  _OrderNowState createState() => _OrderNowState();
}

class _OrderNowState extends State<OrderNow> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(),
      body: Container(
        height: size.height,
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
            Text("order now TBD"),
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
}