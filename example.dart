import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Create controllers to manage the text entered by the user for each TextField
  TextEditingController _textController1 = TextEditingController();
  TextEditingController _textController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two TextFields Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // First TextField using _textController1
            TextField(
              controller: _textController1,
              decoration: InputDecoration(labelText: 'Enter text for TextField 1'),
            ),
            SizedBox(height: 20),
            // Second TextField using _textController2
            TextField(
              controller: _textController2,
              decoration: InputDecoration(labelText: 'Enter text for TextField 2'),
            ),
            SizedBox(height: 20),
            // Button to get the text from both TextFields
            ElevatedButton(
              onPressed: () {
                // Get the text values from both controllers
                String text1 = _textController1.text;
                String text2 = _textController2.text;

                // Do something with the entered text, for example, print it
                print('Text from TextField 1: $text1');
                print('Text from TextField 2: $text2');
              },
              child: Text('Get Text'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose both controllers when the widget is disposed
    _textController1.dispose();
    _textController2.dispose();
    super.dispose();
  }
}
