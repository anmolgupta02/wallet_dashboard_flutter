import 'package:dashboardui/data.dart';
import 'package:flutter/material.dart';

import 'cardDetails.dart';

class CardSection extends StatelessWidget {
  int i =10;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Text(
            "Select Card",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal ,
              itemBuilder: (context,i){
            return Container(
              width: MediaQuery.of(context).size.width ,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                color: kprimaryColor,
                boxShadow: kcustomShadow,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(
                children: <Widget>[

                  Positioned.fill(
                      left: 0,
                      bottom: -200,
                      top: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white30,
                            boxShadow: kcustomShadow
                        ),
                      )
                  ),
                  Positioned.fill(
                      left: -300,
                      bottom: -100,
                      top: -100,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white30,
                            boxShadow: kcustomShadow
                        ),
                      )
                  ),
                  CardDetails(),

                ],
              ),
            );
          }),
        )
      ],
    );
  }
}
