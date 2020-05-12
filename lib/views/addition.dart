import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController firstcontroller = TextEditingController();
  TextEditingController secondcontroller = TextEditingController();
  int getFt;
  int getSc;
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
                colors: [Colors.pinkAccent, Colors.blue]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text(
                "ADDITION",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: firstcontroller,
                decoration: InputDecoration(
                    hintText: ("Enter first operand"),
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    labelText: ("First Operand"),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: secondcontroller,
                decoration: InputDecoration(
                    hintText: ("Enter second operand"),
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    labelText: ("Second Operand"),
                    labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
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
                    getFt = int.parse(firstcontroller.text);
                    getSc = int.parse(secondcontroller.text);
                    getRes = (getFt + getSc).toString();
                    print(getFt + getSc);
                  });

                  // print("res");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 50.0,
                  width: double.infinity,
                  child: Center(
                      child: Text(
                    "RESULT",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                getRes,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
