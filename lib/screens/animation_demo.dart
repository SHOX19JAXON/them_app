import 'dart:math';

import 'package:flutter/material.dart';

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({super.key});

  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

double width = 100;
double height = 100;
Color color = Colors.amberAccent;
BorderRadiusGeometry borderRadis = BorderRadius.circular(8);

class _AnimationDemoState extends State<AnimationDemo>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: width,
              height: height,
              decoration:
                  BoxDecoration(borderRadius: borderRadis, color: color),
              duration: Duration(milliseconds: 500),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    Random random = Random();
                    width = random.nextInt(300).toDouble();
                    height = random.nextInt(300).toDouble();
                    borderRadis =
                        BorderRadius.circular(random.nextInt(50).toDouble());
                    color = Color.fromRGBO(random.nextInt(255),
                        random.nextInt(255), random.nextInt(255), 1);
                  });
                },
                child: Text("BOS"))
          ],
        ),
      ),
    );
  }
}
