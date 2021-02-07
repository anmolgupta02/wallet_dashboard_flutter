import 'package:flutter/material.dart';

Color kprimaryColor = Color(0xFFCADCED);


List<BoxShadow> kcustomShadow = [
  BoxShadow(
      color: Colors.white.withOpacity(0.5),
    spreadRadius: -5,
    offset: Offset(-5,-5),
    blurRadius: 30
  ),
  BoxShadow(
    color: Colors.blue[900].withOpacity(.2),
    spreadRadius: 2,
    offset: Offset(7,7),
    blurRadius: 30,
  )
];


List expenses = [
  {"name": "Groceries", "amount": 500.0},
  {"name": "Online Shopping", "amount": 100.0},
  {"name": "Eating out", "amount": 50.0},
  {"name": "Bills", "amount": 50.0},
  {"name": "Subscription", "amount": 1000.0},
  {"name":"Fees", "amount":900}
];

 List pieColors = [
  Colors.indigo,
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.deepOrange,
  Colors.brown
];