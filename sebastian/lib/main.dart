import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(//If you remove this tag then the content will overlap with the notification bar
          /*child: Container(
            height: 100.0,
            width: 100.0,
            //margin: EdgeInsets.all(50.0), //All edges having equal margins
            //margin: EdgeInsets.fromLTRB(20, 40, 0, 0),//Left Right Top Bottom
            margin: EdgeInsets.only(left: 50.0), //Only one side
            padding: EdgeInsets.all(20),//All edges having equal paddings

            color: Colors.white,
            child: Text("Hello"),
          ),*/
          //child: Column(//Multiple containeres by column
            child: Row(//Multiple containers by row
            mainAxisAlignment: MainAxisAlignment.center, // Centers the Column vertically
            //mainAxisAlignment: MainAxisAlignment.end,//Puts tghe colmun in the end
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,//Organizes the column in an even space
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,//Organizes from edge to edge
            //crossAxisAlignment: CrossAxisAlignment.center,//Aligns everything on the right
            //crossAxisAlignment: CrossAxisAlignment.stretch,//Stretches the elements from edge to edge

            children:<Widget>[
              SizedBox(
                height: 20.0,//Puts a space between the containers
              ),
              Container(
                height: 100.0,
                width: 100.0,
                //margin: EdgeInsets.all(50.0), //All edges having equal margins
                //margin: EdgeInsets.fromLTRB(20, 40, 0, 0),//Left Right Top Bottom
                //margin: EdgeInsets.only(left: 50.0), //Only one side
                padding: EdgeInsets.all(20),//All edges having equal paddings

                color: Colors.blue,
                child: Text("Container 1 "),
              ),
              SizedBox(
                height: 20.0,//Puts a space between the containers
              ),
              Container(
                height: 100.0,
                width: 100.0,
                //margin: EdgeInsets.all(50.0), //All edges having equal margins
               // margin: EdgeInsets.fromLTRB(20, 40, 0, 0),//Left Right Top Bottom
                //margin: EdgeInsets.only(left: 50.0), //Only one side
                padding: EdgeInsets.all(20),//All edges having equal paddings

                color: Colors.red,
                child: Text("Container 2 "),
              ),
              SizedBox(
                height: 20.0,//Puts a space between the containers
              ),
              Container(
                height: 100.0,
                width: 100.0,
                //margin: EdgeInsets.all(50.0), //All edges having equal margins
               // margin: EdgeInsets.fromLTRB(20, 40, 0, 0),//Left Right Top Bottom
                //margin: EdgeInsets.only(left: 50.0), //Only one side
                padding: EdgeInsets.all(20),//All edges having equal paddings

                color: Colors.green,
                child: Text("Container 3 "),
              ),
            ],
          )
        ),
      ),
    );
  }
}