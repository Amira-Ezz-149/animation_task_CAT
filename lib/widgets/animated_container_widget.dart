
import 'package:flutter/material.dart';
class AnimatedContainerWidget extends StatefulWidget {
  double scaleFactor = 1.0;

  Color color = Colors.indigo;
  Offset offset;
  AnimatedContainerWidget({this.color, this.offset});

  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {

  void scale() async {
    for (int i = 0; i < 30; i++)
      await Future.delayed(Duration(microseconds: 50), () {
        setState(() {
          widget.scaleFactor += 0.1;
        });
      });

    for (int i = 0; i < 30; i++)
      await Future.delayed(Duration(microseconds: 50), () {
        setState(() {
          widget.scaleFactor -= 0.1;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        scale();
      },
      child: Transform.scale(
        origin: widget.offset,
        scale: widget.scaleFactor,
        child: Container(
          color: widget.color,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
