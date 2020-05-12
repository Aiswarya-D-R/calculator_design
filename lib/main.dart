import 'package:calculator/views/operationpg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Calc());

class Calc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "CALCULATOR",
            style: TextStyle(fontSize: 30.0),
          ),
          leading: Icon(
            Icons.tablet_mac,
            size: 20.0,
          ),
          backgroundColor: Colors.purple,
        ),
        body: Operationpg(),
      ),
    );
  }
}
