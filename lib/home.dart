import 'package:animation_task_cat/widgets/animated_container_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double scaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedContainerWidget(
                  color: Colors.yellow,
                  offset: Offset(50, 50),
                ),
                SizedBox(width: 20.0,),
                AnimatedContainerWidget(
                  color: Colors.green,
                  offset: Offset(-50, 50),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedContainerWidget(
                  color: Colors.red,
                  offset: Offset(50, -50),
                ),
                SizedBox(width: 20.0,),
                AnimatedContainerWidget(
                  color: Colors.blueAccent,
                  offset: Offset(-50, -50),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
