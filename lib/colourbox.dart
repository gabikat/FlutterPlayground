//GW

import 'package:flutter/material.dart';

// Page: Colour Box
class IndexColourBox extends StatefulWidget {
  IndexColourBox({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _IndexColourBoxState createState() => _IndexColourBoxState();
}

class _IndexColourBoxState extends State<IndexColourBox> {
  Color boxColor = Colors.deepPurpleAccent;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white10,
      child: Center(
          child: Ink(
              color: boxColor,
              width: 200.0,
              height: 200.0,
              child: InkWell(
                  onTap: () {
                    setState(() {
                      if (boxColor == Colors.deepPurpleAccent) {
                        boxColor = Colors.cyan;
                      } else {
                        boxColor = Colors.deepPurpleAccent;
                      }
                    });
                  },
                  // Using Align to create a smaller container for the text
                  child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 100.0,
                        child: Text(
                          'Press me to change my colour!'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ))))),
    );
  }
}
