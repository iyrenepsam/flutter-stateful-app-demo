




import 'package:flutter/material.dart';

void main()=>runApp(CalculatorApp());

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
 TextEditingController getnumber1=TextEditingController();
 TextEditingController getnumber2=TextEditingController();
 double result=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("CALCULATOR APP"),
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: getnumber1,
                decoration: InputDecoration(
                  hintText: " ENTER A NUMBER",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 25.0),

              TextField(
                controller: getnumber2,
                decoration: InputDecoration(
                  hintText: "ENTER ANOTHER NUMBER",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 25.0),

              RaisedButton(
                color: Colors.blue,

                onPressed: (){
                double getn1=double.parse(getnumber1.text);
                double getn2=double.parse(getnumber2.text);


                setState(() {
                  result=getn1+getn2;
                });

                print(result);

              },
                child: Text(" SUM"),
              ),
                    RaisedButton(
                      color: Colors.black12,
                      onPressed: (){
                      double getn1=double.parse(getnumber1.text);
                      double getn2=double.parse(getnumber2.text);

                      setState(() {
                        result=getn1-getn2;
                      });
                      print(result);

                    },
                    child: Text("DIFFERENCE"),
                    ),


                    RaisedButton(
                      color: Colors.blueGrey,
                      onPressed: (){

                        double getn1=double.parse(getnumber1.text);
                        double getn2=double.parse(getnumber2.text);

                        setState(() {
                          result=getn1*getn2;
                        });
                        print(result);

                    },
                    child: Text("PRODUCT"),
                    ),
                    Text(result.toString()),

            ],
          ),
        ),
      ),
    );
  }
}
