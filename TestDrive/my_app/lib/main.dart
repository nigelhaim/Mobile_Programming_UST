import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //AppMaterial
        home: Scaffold(
      //Scaffold
      backgroundColor:
          Color.fromARGB(100, 100, 100, 100), //Color on the left of Scaffold
      appBar: AppBar(
          //AppBar
          backgroundColor: Color.fromARGB(200, 200, 200, 200), //Color
          title: Row(
            children: [
              Icon(Icons.star), //Icon
              //Text with color
              const Text("This is the AppBar text",
                  style: TextStyle(color: Colors.blue)),
            ],
          )),
      body: new Column(children: [
        //Center with text
        Center(child: const Text("This is the centered text")),
        Image.network(//Image on the right of Scaffold
            'https://upload.wikimedia.org/wikipedia/en/thumb/2/24/Seal_of_the_University_of_Santo_Tomas.svg/640px-Seal_of_the_University_of_Santo_Tomas.svg.png')
      ]),
    ));
  }
}
