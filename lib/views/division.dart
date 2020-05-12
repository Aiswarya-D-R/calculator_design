import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quotient extends StatefulWidget {
  @override
  _QuotientState createState() => _QuotientState();
}

class _QuotientState extends State<Quotient> {
  TextEditingController dividend = TextEditingController();
  TextEditingController divisor = TextEditingController();
  int getD;
  int getE;
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
                  Colors.blueGrey,
                  Colors.purpleAccent,
                ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text(
                "DIVISON",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: dividend,
                decoration: InputDecoration(
                    hintText: "Enter dividend",
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    labelText: "Dividend",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: divisor,
                decoration: InputDecoration(
                    hintText: "Enter divisor",
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    labelText: "Divisor",
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
                    getD = int.parse(dividend.text);
                    getE = int.parse(divisor.text);
                    getRes = (getD / getE).toString();
                    print(getRes);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 50.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "RESULT",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                getRes.toString(),
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
