//GW


import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:guac/utils.dart';

List alignCoords(int index, BuildContext c) {
  double x, y;
  if (index == 0) {
    // Place at the center left of the container
    x = -0.5;
    y = 0;
  } else if (index == 1) {
    // Place at the bottom center of the container
    x = 0;
    y = -0.5;
  } else if (index == 2) {
    // Place at center right of the container
    x = 0.5;
    y = 0;
  } else if (index == 3) {
    // Place at top center of container
    x = 0;
    y = 0.5;
  }
  return [x, y];
}

// Page: Gradient
class IndexGradient extends StatefulWidget {
  // Generate list of 8 random RGB codes
  final List randomRGBCodes = List.generate(8, (_) => Random().nextInt(256));

  IndexGradient({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;

  @override
  _IndexGradientState createState() => _IndexGradientState();
}

class _IndexGradientState extends State<IndexGradient> {
  Color colourOne = Color(0xFF4285F4); // blue
  Color colourTwo = Color(0xFF34A853); // green
  Color colourThree = Color(0xFFFBBC05); // yellow
  Color colourFour = Color(0xFFEA4335); // red

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) =>
        showAlertDialog(context, 'Press the \'X\'\'s to change the gradient!'));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> colourButtons = List.generate(4, (index) {
      return Align(
        child: Align(
            alignment: Alignment(alignCoords(index, this.context)[0],
                alignCoords(index, this.context)[1]),
            child: Material(
                type: MaterialType.transparency,
                child: Ink(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () {
                      setState(() {
                        int red = (widget.randomRGBCodes)[
                            Random().nextInt(widget.randomRGBCodes.length)];
                        int green = (widget.randomRGBCodes)[
                            Random().nextInt(widget.randomRGBCodes.length)];
                        int blue = (widget.randomRGBCodes)[
                            Random().nextInt(widget.randomRGBCodes.length)];

                        if (index == 0) {
                          colourThree = Color.fromRGBO(red, green, blue, 1.0);
                        } else if (index == 1) {
                          colourFour = Color.fromRGBO(red, green, blue, 1.0);
                        } else if (index == 2) {
                          colourOne = Color.fromRGBO(red, green, blue, 1.0);
                        } else if (index == 3) {
                          colourTwo = Color.fromRGBO(red, green, blue, 1.0);
                        }
                      });
                    },
                    child: Icon(
                      Icons.clear,
                      size: 30,
                    ),
                  ),
                ))),
      );
    });

    return Container(
      decoration: BoxDecoration(
        gradient: SweepGradient(
          center: FractionalOffset.center,
          startAngle: 0.0,
          endAngle: pi * 2,
          colors: <Color>[
            colourOne,
            colourTwo,
            colourThree,
            colourFour,
            colourOne, // to seamlessly transition to the start
          ],
          stops: <double>[0.0, 0.25, 0.5, 0.75, 1.0],
        ),
      ),
      child: Stack(
        children: colourButtons,
      ),
    );
  }
}
