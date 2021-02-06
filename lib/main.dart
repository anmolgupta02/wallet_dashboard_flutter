import 'package:dashboardui/data.dart';
import 'package:dashboardui/widgets/card.dart';
import 'package:dashboardui/widgets/expenseSection.dart';
import 'package:dashboardui/widgets/header.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'NotoSans'),
    )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: dashboardHeader(), //Using Header here!
          ),
          Expanded(
            child: Container(
              child: CardSection(),

            ),
          ),
          Expanded(
            child: ExpensesSection(),
          )
        ],
      ),
    );
  }
}
