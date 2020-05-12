import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sub extends StatefulWidget {
  @override
  _SubState createState() => _SubState();
}

class _SubState extends State<Sub> {
  TextEditingController firstoperand = TextEditingController();
  TextEditingController secondoperand = TextEditingController();
  int getA;
  int getB;
  String getRes = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xFFE55D87),
                Colors.blue,
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text(
                "SUBTRACTION",
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: firstoperand,
                decoration: InputDecoration(
                    hintText: "Enter first operand",
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    labelText: "First Operand",
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: secondoperand,
                decoration: InputDecoration(
                    hintText: "Enter second operand",
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    labelText: "Second Operand",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    getA = int.parse(firstoperand.text);
                    getB = int.parse(secondoperand.text);
                    getRes = (getA - getB).toString();
                    print(getRes);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 45.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "RESULT",
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(getRes,style: TextStyle(fontSize: 25.0,color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
