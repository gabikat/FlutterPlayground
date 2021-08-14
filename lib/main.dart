//GW

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'globalcontrol.dart';

void main() => runApp(FlutterPlayground());

class FlutterPlayground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const TextTheme blackCupertino = TextTheme(
      display4: TextStyle(
          debugLabel: 'blackCupertino headline1',
          fontFamily: '.SF UI Display',
          inherit: true,
          color: Colors.black54,
          decoration: TextDecoration.none),
      display3: TextStyle(
          debugLabel: 'blackCupertino headline2',
          fontFamily: '.SF UI Display',
          inherit: true,
          color: Colors.black54,
          decoration: TextDecoration.none),
      display2: TextStyle(
          debugLabel: 'blackCupertino headline3',
          fontFamily: '.SF UI Display',
          inherit: true,
          color: Colors.black54,
          decoration: TextDecoration.none),
      display1: TextStyle(
          debugLabel: 'blackCupertino headline4',
          fontFamily: '.SF UI Display',
          inherit: true,
          color: Colors.black54,
          decoration: TextDecoration.none),
      headline: TextStyle(
          debugLabel: 'blackCupertino headline5',
          fontFamily: '.SF UI Display',
          inherit: true,
          color: Colors.black87,
          decoration: TextDecoration.none),
      title: TextStyle(
          debugLabel: 'blackCupertino headline6',
          fontFamily: '.SF UI Display',
          inherit: true,
          color: Colors.black87,
          decoration: TextDecoration.none),
      body2: TextStyle(
          debugLabel: 'blackCupertino bodyText1',
          fontFamily: '.SF UI Text',
          inherit: true,
          color: Colors.black87,
          decoration: TextDecoration.none),
      body1: TextStyle(
          debugLabel: 'blackCupertino bodyText2',
          fontFamily: '.SF UI Text',
          inherit: true,
          color: Colors.black87,
          decoration: TextDecoration.none),
      subhead: TextStyle(
          debugLabel: 'blackCupertino subtitle1',
          fontFamily: '.SF UI Text',
          inherit: true,
          color: Colors.black87,
          decoration: TextDecoration.none),
      subtitle: TextStyle(
          debugLabel: 'blackCupertino subtitle2',
          fontFamily: '.SF UI Text',
          inherit: true,
          color: Colors.black,
          decoration: TextDecoration.none),
      caption: TextStyle(
          debugLabel: 'blackCupertino caption',
          fontFamily: '.SF UI Text',
          inherit: true,
          color: Colors.black54,
          decoration: TextDecoration.none),
      button: TextStyle(
          debugLabel: 'blackCupertino button',
          fontFamily: '.SF UI Text',
          inherit: true,
          color: Colors.black87,
          decoration: TextDecoration.none),
      overline: TextStyle(
          debugLabel: 'blackCupertino overline',
          fontFamily: '.SF UI Text',
          inherit: true,
          color: Colors.black,
          decoration: TextDecoration.none),
    );

    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
          // https://api.flutter.dev/flutter/material/ThemeData-class.html
          primaryTextTheme: blackCupertino,
          scaffoldBackgroundColor: Colors.white.withOpacity(0.95),
          appBarTheme: AppBarTheme(
            color: Color(0xFFffffff).withOpacity(0.7),
          ),
          buttonTheme: ButtonThemeData(
            padding: EdgeInsets.all(14.0),
          )),

      home: GlobalStructure(title: 'Flutter Playground'),
    );
  }
}
