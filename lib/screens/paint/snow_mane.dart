
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class SnavMane extends StatefulWidget {
  const SnavMane({Key? key}) : super(key: key);

  @override
  State<SnavMane> createState() => _SnavManeState();
}

class _SnavManeState extends State<SnavMane> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Custom Painter: drawPath"),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 500,
          color: Colors.grey,
          child: CustomPaint(
            size: const Size(300, 300),
            painter: MyPainter(),
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                // color: Colors.yellow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    var path = Path();
    // moveTo and  lineTo
    path.moveTo(60, 320);
    path.lineTo(20,150);
    //
    var path2 = Path();
    // moveTo and  lineTo
    path.moveTo(290, 320);
    path.lineTo(330,150);
    //
    canvas.drawPath(path, paint);



    final center = Offset(size.width/2, size.height/6);
    final smilePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 15;
    final center1 = Offset(size.width/2, size.height/6);
    final smilePaint1 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;

    final smilePaint2 = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;
    canvas.drawArc(
      Rect.fromCenter(center: Offset(180,200), width: 165, height: 165),
      pi/2,
      2*pi,
      false,
      smilePaint,
    );
    canvas.drawArc(
      Rect.fromCenter(center: Offset(180,370), width: 250, height: 250),
      pi/2,
      2*pi,
      false,
      smilePaint,
    );
    canvas.drawArc(
      Rect.fromCenter(center: Offset(180,370), width: 260, height: 260),
      pi/2,
      2*pi,
      false,
      smilePaint1,
    );
    canvas.drawArc(
      Rect.fromCenter(center: Offset(180,200), width: 165, height: 165),
      pi/2,
      2*pi,
      false,
      smilePaint,
    );
    canvas.drawArc(
      Rect.fromCenter(center: Offset(180,200), width: 170, height: 170),
      pi/2,
      2*pi,
      false,
      smilePaint1,
    );
    canvas.drawArc(
      Rect.fromCenter(center: Offset(150,160), width: 8, height: 8),
      pi/2,
      2*pi,
      false,
      smilePaint1,
    );
    canvas.drawArc(
      Rect.fromCenter(center: Offset(215,160), width: 8, height: 8),
      pi/2,
      2*pi,
      false,
      smilePaint1,
    );
    canvas.drawArc(
      Rect.fromCenter(center: Offset(180,215), width: 80, height: 50),
      pi*2,
      pi,
      false,
      smilePaint1,
    );

    canvas.drawArc(
      Rect.fromCenter(center: Offset(175,315), width: 8, height: 8),
      pi/2,
      2*pi,
      false,
      smilePaint1,
    );
    canvas.drawArc(
      Rect.fromCenter(center: Offset(175,350), width: 8, height: 8),
      pi/2,
      2*pi,
      false,
      smilePaint1,
    );
    canvas.drawArc(
      Rect.fromCenter(center: Offset(175,380), width: 8, height: 8),
      pi/2,
      2*pi,
      false,
      smilePaint1,
    );
    canvas.drawArc(
      Rect.fromCenter(center: Offset(180,189), width: 20, height: 20),
      pi/2,
      2*pi,
      false,
      smilePaint2,
    );
    var paint2 = Paint()
      ..color = Colors.orange
      ..strokeWidth = 2
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.square;

    var path3 = Path();
    // moveTo and  lineTo
    path3.moveTo(180, 179);
    path3.lineTo(220,185);
    path3.lineTo(180,200);
    canvas.drawPath(path3, paint2);



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}