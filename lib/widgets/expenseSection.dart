import 'package:dashboardui/data.dart';
import 'package:flutter/material.dart';

import 'PeiChart.dart';

class ExpensesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Expenses',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses.map((e) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(radius: 5, backgroundColor: pieColors[expenses.indexOf(e)]),
                        SizedBox(width: 3),
                        Text(e['name'], style: TextStyle(
                          fontSize: 18,
                        ),)
                      ],
                    ),
                  )).toList()
                )
              ),
            ),
            Expanded(
              flex: 1,
              child: PieChart(),
            )
          ],
        ),
      ],
    );
  }
}
