import 'package:flutter/material.dart';

class ColumnPractice extends StatelessWidget {
  const ColumnPractice({Key? key}) : super(key: key);

  // get controller => null;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Container(
          color: Colors.amberAccent,
          height: 100,
          width: double.infinity,
        ),
        Container(
          color: Colors.cyan,
          height: 100.0,
          width: double.infinity,
        ),
        Container(
          color: Colors.teal,
          height: 100.0,
          width: double.infinity,
        ),
        Container(
          color: Colors.amberAccent,
          height: 100.0,
          width: double.infinity,
        ),
        Container(
          color: Colors.cyan,
          height: 100.0,
          width: double.infinity,
        ),
        Container(
          color: Colors.teal,
          height: 100.0,
          width: double.infinity,
        ),
        Container(
          color: Colors.amberAccent,
          height: 100.0,
          width: double.infinity,
        ),
        Container(
          color: Colors.cyan,
          height: 100.0,
          width: double.infinity,
        ),
        Container(
          color: Colors.teal,
          height: 100.0,
          width: double.infinity,
        ),
      ]),
    );
  }
}
