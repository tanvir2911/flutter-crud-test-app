import 'package:flutter/material.dart';
import 'package:test_app/image.dart';

class StoryFb extends StatelessWidget {
  const StoryFb({Key? key}) : super(key: key);

  // get controller => null;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Container(
          color: const Color.fromARGB(255, 109, 110, 110),
          height: 300.0,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    color: Color.fromARGB(228, 29, 29, 29),
                    width: 150.0,
                    height: double.infinity,
                    margin: EdgeInsetsDirectional.fromSTEB(0, 0, 8.0, 0),
                    child: Story(),
                  ),
                  Container(
                    width: 150.0,
                    height: double.infinity,
                    margin: EdgeInsetsDirectional.fromSTEB(0, 0, 8.0, 0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/20670169/pexels-photo-20670169/free-photo-of-orange-trams-on-tracks.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                          fit: BoxFit.cover),
                    ),
                    child: Center(
                      child: Text(
                        "Train",
                        style: TextStyle(
                          fontSize: 55,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.cyan,
                    width: 150.0,
                    height: double.infinity,
                    margin: EdgeInsetsDirectional.fromSTEB(0, 0, 8.0, 0),
                    child: Image.asset("images/pexels1.jpg"),
                  ),
                  Container(
                      color: Colors.teal,
                      width: 150.0,
                      height: double.infinity,
                      margin: EdgeInsetsDirectional.fromSTEB(0, 0, 8.0, 0)),
                  Container(
                      color: Colors.amberAccent,
                      width: 150.0,
                      height: double.infinity,
                      margin: EdgeInsetsDirectional.fromSTEB(0, 0, 8.0, 0)),
                ],
              ),
            ),
          ),
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
