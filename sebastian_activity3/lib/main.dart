//First step
/*
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Sebastian Activity 3',
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Sebastian Activity 3'),
        ),
        body: const Center(
          child: Text("Hello world"),
        ),
      ),
    );
  }
}

*/

//Step 3
/*
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  //Add the following code at the top of the build()

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          //1
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //2
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        //3
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sebastian Activity 3',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Sebastian Activity 3'),
          ),
          body: Column(
            children: [
              titleSection,
            ],
          )
      ),
    );
  }
}
*/

//Step 3 and step 4
import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            //1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //2
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Underground River',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Puerto Princesa Palawan',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          //3
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Colors.greenAccent;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtomColumn(color, Icons.call, 'Call'),
        _buildButtomColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtomColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        style: TextStyle(
          color: Colors.white,
        ),
        'Puerto-Princesa Subterranean River National Park encompasses one of the world’s most impressive cave systems, featuring spectacular limestone karst landscapes, pristine natural beauty, and intact old-growth forests and distinctive wildlife. It is located in the south-western part of the Philippine Archipelago on the mid western coast of Palawan, approximately 76 km northwest of Puerto Princesa and 360 km southwest of Manila.',
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Sebastian Activity 3',
      home: Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(
            title: const Text('Sebastian Activity 3'),
          ),
          body: ListView(
            children: [
              Image.asset(
                'images/udgdriver.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          )),
    );
  }

  Column _buildButtomColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
