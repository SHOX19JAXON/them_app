
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class PaintScreen extends StatefulWidget {
  const PaintScreen({Key? key}) : super(key: key);

  @override
  State<PaintScreen> createState() => _PaintScreenState();
}

class _PaintScreenState extends State<PaintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Bayroq"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 300,
          color: Colors.blue,
          child: CustomPaint(
            size: const Size(300, 300),
            painter: MyPainter(),
            child: Center(

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
    /** Oq rang**/
    var paint2 = Paint()
      ..color = Colors.white
      ..strokeWidth = 10
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.square;
    var path2 = Path();
    /** Qizil rang**/
    var paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;
    var path = Path();

    /** Yashil rang rang**/
    var paintGreen = Paint()
      ..color = Colors.green
      ..strokeWidth = 10
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.square;
    var path3 = Path();
    /** kulurang rang rang**/
    var paintGrey = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.square;
    var path4 = Path();

    path4.moveTo(98, 20);
    path4.lineTo(106 , 20);
    path4.lineTo(110 , 15);
    path4.lineTo(114 , 20);
    path4.lineTo(122 , 20);
    path4.lineTo(116 , 24);
    path4.lineTo(122 , 30);
    path4.lineTo(111 , 24);
    path4.lineTo(100, 30);
    path4.lineTo(105, 24);
    path4.lineTo(98, 20);

    path4.moveTo(125, 20);
    path4.lineTo(133 , 20);
    path4.lineTo(137 , 15);
    path4.lineTo(141 , 20);
    path4.lineTo(149 , 20);
    path4.lineTo(143 , 24);
    path4.lineTo(149 , 30);
    path4.lineTo(138 , 24);
    path4.lineTo(127, 30);
    path4.lineTo(132, 24);
    path4.lineTo(125, 20);

    path4.moveTo(150, 20);
    path4.lineTo(158 , 20);
    path4.lineTo(162 , 15);
    path4.lineTo(166 , 20);
    path4.lineTo(175 , 20);
    path4.lineTo(168 , 24);
    path4.lineTo(174 , 30);
    path4.lineTo(163 , 24);
    path4.lineTo(152, 30);
    path4.lineTo(157, 24);
    path4.lineTo(150, 20);

    path4.moveTo(98, 50);
    path4.lineTo(106 , 50);
    path4.lineTo(110 , 45);
    path4.lineTo(114 , 50);
    path4.lineTo(122 , 50);
    path4.lineTo(116 , 54);
    path4.lineTo(122 , 60);
    path4.lineTo(111 , 54);
    path4.lineTo(100, 60);
    path4.lineTo(105, 54);
    path4.lineTo(98, 50);

    path4.moveTo(125, 50);
    path4.lineTo(133 , 50);
    path4.lineTo(137 , 45);
    path4.lineTo(141 , 50);
    path4.lineTo(149 , 50);
    path4.lineTo(143 , 54);
    path4.lineTo(149 , 60);
    path4.lineTo(138 , 54);
    path4.lineTo(127, 60);
    path4.lineTo(132, 54);
    path4.lineTo(125, 50);

    path4.moveTo(150, 50);
    path4.lineTo(158 , 50);
    path4.lineTo(162 , 45);
    path4.lineTo(166 , 50);
    path4.lineTo(175 , 50);
    path4.lineTo(168 , 54);
    path4.lineTo(174 , 60);
    path4.lineTo(163 , 54);
    path4.lineTo(152, 60);
    path4.lineTo(157, 54);
    path4.lineTo(150, 50);

    path4.moveTo(180, 50);
    path4.lineTo(188 , 50);
    path4.lineTo(192 , 45);
    path4.lineTo(196 , 50);
    path4.lineTo(205 , 50);
    path4.lineTo(198 , 54);
    path4.lineTo(204 , 60);
    path4.lineTo(193 , 54);
    path4.lineTo(182, 60);
    path4.lineTo(187, 54);
    path4.lineTo(180, 50);

    path4.moveTo(98, 80);
    path4.lineTo(106 , 80);
    path4.lineTo(110 , 75);
    path4.lineTo(114 , 80);
    path4.lineTo(122 , 80);
    path4.lineTo(116 , 84);
    path4.lineTo(122 , 90);
    path4.lineTo(111 , 84);
    path4.lineTo(100, 90);
    path4.lineTo(105, 84);
    path4.lineTo(98, 80);

    path4.moveTo(125, 80);
    path4.lineTo(133 , 80);
    path4.lineTo(137 , 75);
    path4.lineTo(141 , 80);
    path4.lineTo(149 , 80);
    path4.lineTo(143 , 84);
    path4.lineTo(149 , 90);
    path4.lineTo(138 , 84);
    path4.lineTo(127, 90);
    path4.lineTo(132, 84);
    path4.lineTo(125, 80);




    path4.moveTo(150, 80);
    path4.lineTo(158 , 80);
    path4.lineTo(162 , 75);
    path4.lineTo(166 , 80);
    path4.lineTo(175 , 80);
    path4.lineTo(168 , 84);
    path4.lineTo(174 , 90);
    path4.lineTo(163 , 84);
    path4.lineTo(152, 90);
    path4.lineTo(157, 84);
    path4.lineTo(150, 80);

    path4.moveTo(180, 80);
    path4.lineTo(188 , 80);
    path4.lineTo(192 , 75);
    path4.lineTo(196 , 80);
    path4.lineTo(205 , 80);
    path4.lineTo(198 , 84);
    path4.lineTo(204 , 90);
    path4.lineTo(193 , 84);
    path4.lineTo(182, 90);
    path4.lineTo(187, 84);
    path4.lineTo(180, 80);

    path4.moveTo(210, 80);
    path4.lineTo(218 , 80);
    path4.lineTo(222 , 75);
    path4.lineTo(226 , 80);
    path4.lineTo(235 , 80);
    path4.lineTo(228 , 84);
    path4.lineTo(234 , 90);
    path4.lineTo(223 , 84);
    path4.lineTo(212, 90);
    path4.lineTo(217, 84);
    path4.lineTo(210, 80);




    canvas.drawPath(path4, paintGrey);


    /** reed rang rang**/
    path.moveTo(0, size.height / 1.4);
    path.lineTo(size.width , size.height/1.4);
    canvas.drawPath(path, paint);
    /** oq rang rang**/
    path2.moveTo(0, size.height / 1.43);
    path2.lineTo(size.width , size.height/1.43);
    path2.lineTo(size.width , size.height/2.65);
    path2.lineTo(0 , size.height/2.65);
    path2.lineTo(0 , size.height/1.5);
    canvas.drawPath(path2, paint2);
    /** reed rang rang**/
    path.moveTo(0, size.height / 2.8);
    path.lineTo(size.width , size.height/2.8);
    canvas.drawPath(path, paint);
    /** green rang rang**/
    path3.moveTo(0, size.height / 1.37);
    path3.lineTo(size.width , size.height/1.37);
    path3.lineTo(size.width , size.height/1);
    path3.lineTo(0 , size.height/1);
    path3.lineTo(0 , size.height/1.34);
    canvas.drawPath(path3, paintGreen);

    final center = Offset(size.width/6, size.height/6);
    final smilePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 15;
    canvas.drawArc(
      Rect.fromCenter(center: center, width: 60, height: 80),
      pi/2,
      pi,
      false,
      smilePaint,
    );

    final center2 = Offset(size.width/6, size.height/6);
    final smilePaint2 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 15;
    canvas.drawArc(
      Rect.fromCenter(center: center2, width: 90, height: 81),
      pi/2,
      pi,
      false,
      smilePaint2,
    );


  }


  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}