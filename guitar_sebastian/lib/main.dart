import 'package:flutter/material.dart';

void main() => runApp(GuitarApp());

class GuitarApp extends StatelessWidget {
  Expanded createButton(String tone) {
    return Expanded(
      child: FilledButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20)),
        onPressed: () {
          print('$tone has been pressed');
        },
        child: Text(tone),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/images/fret_board.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: Row(children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 380),
                                child: createButton('DO'),
                              ),
                            ],
                          )),
                    ]),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
