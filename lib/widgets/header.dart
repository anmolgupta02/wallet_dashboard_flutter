import 'package:dashboardui/data.dart';
import 'package:flutter/material.dart';

class dashboardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Anmol's Wallet",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              boxShadow: kcustomShadow,
              color: kprimaryColor,
              shape: BoxShape.circle,
            ),
            child: Stack(  // This whole thing is to give the UI a border of 2 colors..
              // 1st child contains deeporagnee color and 2nd child contains primary which makes a eclipse effect.
              children: <Widget>[
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: kcustomShadow,
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      boxShadow: kcustomShadow,
                      color: kprimaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.notifications,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
