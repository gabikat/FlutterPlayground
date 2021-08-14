//GW

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colourbox.dart';
import 'gradient.dart';
import 'home.dart';

class StructureElements {
  static final double _appBarHeight = 50.0; // Height of top bar

  double getAppBarHeight() {
    return _appBarHeight;
  }
}

class GlobalStructure extends StatefulWidget {
  GlobalStructure({Key key, this.title}) : super(key: key);
  final String title; // provided by parent

  @override
  _GlobalStructureState createState() => _GlobalStructureState();
}

class _GlobalStructureState extends State<GlobalStructure> {
  // Bottom navigation buttons
  static const String _but1 = "Home";
  static const String _but2 = "Colour Box";
  static const String _but3 = "Gradient";

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _frameView(int index) {
    if (index == 0) {
      return IndexHome();
    } else if (index == 1) {
      return IndexColourBox();
    } else if (index == 2) {
      return IndexGradient();
    }
    return IndexHome();
  }

// Main structure
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
        // Bottom Navigation bar
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), title: Text(_but1)),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.fullscreen), title: Text(_but2)),
            BottomNavigationBarItem(
                icon: Icon(Icons.blur_on), title: Text(_but3)),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white.withOpacity(0.8),
          unselectedItemColor: Colors.black.withOpacity(0.6),
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          onTap: _onItemTapped,
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(StructureElements().getAppBarHeight()),
          child: AppBar(
            title: Text(
              widget.title,
            ),
          ),
        ),
        body: Center(child: _frameView(_selectedIndex)));
  }
}
