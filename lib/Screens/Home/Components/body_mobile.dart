import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:food_web/Screens/Menu/menu_screen.dart';
import 'package:food_web/Screens/Order/order_now.dart';
import 'package:food_web/constant.dart';

class BodyOfMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 4 / 9,
            child: FittedBox(
              child: Text(
                "KingZGrill",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                ), 
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 2 / 5,
            child: AutoSizeText(
              "At KingZ Grill all of our food is grilled to order and our aim is to provide fresh and healthy alternative to fast food. We have created a mouth-watering menu of dishes for everyone to enjoy inspired by flavours from all over.",
              maxLines: 11,
              maxFontSize: 140,
              minFontSize: 18,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          FittedBox(
            // Now it just take the required spaces
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF372930),
                borderRadius: BorderRadius.circular(34),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF372930),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderNow()));
                    },
                    child: Text(
                      "order now".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
