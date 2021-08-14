//GW

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'globalcontrol.dart';

// Page: Home
class IndexHome extends StatefulWidget {
  IndexHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _IndexHomeState createState() => _IndexHomeState();
}

class _IndexHomeState extends State<IndexHome> {
  int shadeShift = 0;

  // List of letters to incorporate into container titles
  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O'
  ];

  // List of colour shade values
  final List<int> colourShades = <int>[
    600,
    500,
    100,
    600,
    500,
    100,
    600,
    500,
    100,
    600,
    500,
    500,
    100,
    600,
    500
  ];

  @override
  Widget build(BuildContext context) {
    final appBarHeight = StructureElements().getAppBarHeight();
    return ListView.separated(
      padding: EdgeInsets.fromLTRB(10, (appBarHeight + 60), 10, 10),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: () {
              setState(() {
                shadeShift = Random().nextInt(colourShades.length);
              });
            },
            child: Container(
                height: 50,
                color: Colors.amber[
                    colourShades[(index + shadeShift) % colourShades.length]],
                child: Center(child: Text('Entry ${entries[index]}'))));
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
