import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Smayil extends StatefulWidget {
  const Smayil({Key? key}) : super(key: key);

  @override
  State<Smayil> createState() => _SmayilState();
}

class _SmayilState extends State<Smayil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Smaylik"),
      ),
      body: Center(
          child: Row(
        children: [
          Container(
            color: Colors.grey,
            child: CustomPaint(
              size: const Size(125, 200),
              painter: MyPainter(),
            ),
          ),
          Container(
            color: Colors.grey,
            child: CustomPaint(
              size: const Size(125, 200),
              painter: MyPainter2(),
            ),
          ),
          Container(
            color: Colors.grey,
            child: CustomPaint(
              size: const Size(125, 200),
              painter: MyPainter3(),
            ),
          ),
        ],
      )),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(100, 100) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    //Draw the body
    var paint = Paint()
      ..color = Colors.yellow
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, paint);
    //Draw the mouth
    final smilePaint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;
    canvas.drawArc(
      Rect.fromCenter(center: center, width: radius, height: radius),
      0,
      pi,
      false,
      smilePaint,
    );
    //Draw the eyes
    canvas.drawCircle(Offset(center.dx - radius / 2, center.dy - radius / 2), 5,
        Paint()..color = Colors.yellow);
    canvas.drawCircle(Offset(center.dx + radius / 2, center.dy - radius / 2), 5,
        Paint()..color = Colors.yellow);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
class MyPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(100, 100) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    //Draw the body
    var paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, paint);
    //Draw the mouth
    final smilePaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;
    canvas.drawArc(
      Rect.fromCenter(center: Offset(63,120), width: radius, height: radius),
      pi,
      pi,
      false,
      smilePaint,
    );
    //Draw the eyes
    canvas.drawCircle(Offset(center.dx - radius / 2, center.dy - radius / 2), 5,
        Paint()..color = Colors.red);
    canvas.drawCircle(Offset(center.dx + radius / 2, center.dy - radius / 2), 5,
        Paint()..color = Colors.red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
class MyPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(100, 100) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    //Draw the body
    var paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, paint);
    //Draw the mouth
    final smilePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;
    canvas.drawArc(
      Rect.fromCenter(center: Offset(63,120), width: radius, height: radius),
      pi,
      pi,
      false,
      smilePaint,
    );
    //Draw the eyes
    canvas.drawCircle(Offset(center.dx - radius / 2, center.dy - radius / 2), 5,
        Paint()..color = Colors.blue);
    canvas.drawCircle(Offset(center.dx + radius / 2, center.dy - radius / 2), 5,
        Paint()..color = Colors.blue);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
