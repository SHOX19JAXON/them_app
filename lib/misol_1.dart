import 'package:flutter/material.dart';
class ExempleOne extends StatefulWidget {
  const ExempleOne({super.key});

  @override
  State<ExempleOne> createState() => _ExempleOneState();
}

class _ExempleOneState extends State<ExempleOne> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("1- misol"),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
