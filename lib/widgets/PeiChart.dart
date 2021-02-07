import 'dart:math';

import 'package:dashboardui/data.dart';
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {

  double totalAmt=0;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: kcustomShadow,
          color: kprimaryColor,
        ),
        height: 200,
        width: 200,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomPaint(
                foregroundPainter: PieChartPainter(),
                child: Container(
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: kcustomShadow,
                  color: kprimaryColor,
                ),
                height: 80,
                width: 80,
                child: Center(
                  child: Text(
                    "₹ " +TotalListAmt().toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}

double TotalListAmt(){
  double amt = 0;
  expenses.forEach((element) {
    amt+=element['amount'];
  });
  return amt;

}


class PieChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Offset center = Offset(size.width/2, size.height/2);
    double radius = min(size.width/2, size.height/2);

    var paint = new Paint()..style = PaintingStyle.stroke..strokeWidth = 50;

    double total = 0;
    expenses.forEach((element) {
      total+=element['amount'];
    });

    var startRadian = -pi/2;

    for(int i =0; i<expenses.length; i++){
      var currentExpense = expenses[i];
      var sweepRadian = currentExpense['amount']/total*2*pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadian, sweepRadian, false, paint);
      startRadian+=sweepRadian;
    }

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}