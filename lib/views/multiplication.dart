import 'package:flutter/material.dart';
class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  TextEditingController multiplicand=TextEditingController();
  TextEditingController multiplier=TextEditingController();
  int getM;
  int getN;
  String getRes="";
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
                  Colors.purple,
                  Colors.white70,
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text(
                "MULTIPLICATION",
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: multiplicand,
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    hintText: "Enter multiplicand",
                    labelText: "Multiplicant",
                    labelStyle: TextStyle(fontSize: 20.00, color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: multiplier,
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    hintText: "Enter multiplier",
                    labelText: "Multiplier",
                    labelStyle: TextStyle(fontSize: 20.00, color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    getM=int.parse(multiplicand.text);
                    getN=int.parse(multiplier.text);
                    getRes=(getM*getN).toString();
                    print(getRes);
                  });

                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
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
              SizedBox(height: 5.0,),
              Text(getRes,style: TextStyle(fontSize: 25.0,color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}

