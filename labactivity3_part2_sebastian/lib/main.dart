import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget phone = Column(children: <Widget>[
      Container(
        width: 350.0,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(children: [
          Container(child: Icon(Icons.call)),
          Container(
              margin: EdgeInsets.only(left: 10), child: Text("+0915 ### 9909"))
        ]),
      )
    ]);
    Widget email = Row(children: [
      Container(
        width: 350.0,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(children: [
          Container(child: Icon(Icons.email)),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Text("nigelhaim.sebastian.cics@ust.edu.ph"))
        ]),
      )
    ]);
    return MaterialApp(
        title: "Sebastian Lecture Exercise 1",
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 114, 32),
          appBar: AppBar(
            title: const Text("Sebastian Lecture Exercise 1"),
          ),
          body: SafeArea(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: Image.asset(
                      'images/icon.png',
                      width: 150,
                      height: 150,
                    )),
                    Container(
                        child: Text(
                      'Nigel Sebastian',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    )),
                    Container(
                      child: Text("Mobile Developer"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    phone,
                    SizedBox(
                      height: 20.0,
                    ),
                    email,
                  ],
                ),
              )
            ],
          )),
        ));
  }
}
