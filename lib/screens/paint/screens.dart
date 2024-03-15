import 'package:flutter/material.dart';
import 'package:them_app/screens/paint/paint_screen.dart';
import 'package:them_app/screens/paint/smayl.dart';
import 'package:them_app/screens/paint/snow_mane.dart';
class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screens"),
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){
            Navigator.push(context ,MaterialPageRoute(builder: (context) => PaintScreen()));
          }, child: Text("BAYROQ")),
          TextButton(onPressed: (){
            Navigator.push(context ,MaterialPageRoute(builder: (context) => SnavMane()));
          }, child: Text("qorbobo")),
          TextButton(onPressed: (){
            Navigator.push(context ,MaterialPageRoute(builder: (context) => Smayil()));
          }, child: Text("BAYROQ")),
          TextButton(onPressed: (){}, child: Text("BAYROQ")),
        ],
      ),
    );
  }
}
