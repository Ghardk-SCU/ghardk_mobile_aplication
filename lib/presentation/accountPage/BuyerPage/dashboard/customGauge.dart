import 'dart:math';

import 'package:flutter/material.dart';

class CustomGauge extends StatelessWidget {
  final int shipped;
  final int processing;
  final int canceled;

  const CustomGauge({
    Key? key,
    required this.shipped,
    required this.processing,
    required this.canceled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var totalOrder = canceled + processing + shipped;
    var percentage = ((totalOrder - canceled) / (totalOrder)) * 100;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: Size(200, 100),
              painter: GaugePainter(
                  percentage: percentage,
                  canceled: canceled,
                  processing: processing,
                  shipped: shipped,
                  totalOrders: totalOrder),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    '${percentage.toStringAsFixed(2)}%',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text('Completed', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  '${canceled + processing + shipped}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('Total orders'),
              ],
            ),
            Column(
              children: [
                Text(
                  '$shipped',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text('Shipped', style: TextStyle(color: Colors.green)),
              ],
            ),
            Column(
              children: [
                Text(
                  '$processing',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                Text('Processing', style: TextStyle(color: Colors.orange)),
              ],
            ),
            Column(
              children: [
                Text(
                  '$canceled',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Text('Canceled', style: TextStyle(color: Colors.red)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class GaugePainter extends CustomPainter {
  final double percentage;
  final int totalOrders;
  final int shipped;
  final int processing;
  final int canceled;

  GaugePainter(
      {super.repaint,
      required this.percentage,
      required this.totalOrders,
      required this.shipped,
      required this.processing,
      required this.canceled});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;

    final backgroundPaint = Paint()
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;

    final startAngle = pi;
    final sweepAngle = pi;

    // Calculate proportions
    final shippedAngle = (shipped / totalOrders) * sweepAngle;
    final processingAngle = (processing / totalOrders) * sweepAngle;
    final canceledAngle = (canceled / totalOrders) * sweepAngle;

    // Draw background arc
    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height * 2),
      startAngle,
      sweepAngle,
      false,
      backgroundPaint,
    );

    // Draw the shipped part of the arc
    paint.color = Colors.green;
    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height * 2),
      startAngle,
      shippedAngle,
      false,
      paint,
    );

    // Draw the processing part of the arc
    paint.color = Colors.orange;
    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height * 2),
      startAngle + shippedAngle,
      processingAngle,
      false,
      paint,
    );

    // Draw the canceled part of the arc
    paint.color = Colors.red;
    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height * 2),
      startAngle + shippedAngle + processingAngle,
      canceledAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
