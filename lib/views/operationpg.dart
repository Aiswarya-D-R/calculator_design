import 'package:calculator/views/addition.dart';
import 'package:calculator/views/division.dart';
import 'package:calculator/views/multiplication.dart';
import 'package:calculator/views/subtraction.dart';
import 'package:flutter/material.dart';

class Operationpg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.deepPurple, Colors.blue],
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Center(
            child: Text(
              "Select desired Operation",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 65.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Add()));
            },
            child: Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 50.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  "ADDITION",
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sub()));
            },
            child: Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 50.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  "SUBTRACTION",
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Product()));
            },
            child: Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 50.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  "MULTIPLICATION",
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Quotient()));
            },
            child: Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 50.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  "DIVISION",
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
