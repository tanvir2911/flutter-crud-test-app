import 'package:flutter/material.dart';

class RowPractice extends StatelessWidget {
  const RowPractice({Key? key}) : super(key: key);

  // get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          Container(
            color: Colors.amberAccent,
            height: double.infinity,
            width: 100,
          ),
          Container(
            color: Colors.cyan,
            width: 100.0,
            height: double.infinity,
          ),
          Container(
            color: Colors.teal,
            width: 100.0,
            height: double.infinity,
          ),
          Container(
            color: Colors.amberAccent,
            width: 100.0,
            height: double.infinity,
          ),
          Container(
            color: Colors.cyan,
            width: 100.0,
            height: double.infinity,
          ),
          Container(
            color: Colors.teal,
            width: 100.0,
            height: double.infinity,
          ),
          Container(
            color: Colors.amberAccent,
            width: 100.0,
            height: double.infinity,
          ),
          Container(
            color: Colors.cyan,
            width: 100.0,
            height: double.infinity,
          ),
          Container(
            color: Colors.teal,
            width: 100.0,
            height: double.infinity,
          ),
        ]),
      ),
    );
  }
}

// class RowExpanded extends StatelessWidget {
//   const RowExpanded({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Row(
//       children: [
//         Expanded(
//             child: Container(
//                 color: Color.fromARGB(255, 7, 128, 214),
//                 height: double.infinity)),
//         Expanded(
//             child: Container(
//                 color: Color.fromARGB(255, 211, 5, 5),
//                 height: double.infinity)),
//         Container(
//           color: Color.fromARGB(255, 2, 240, 22),
//           height: double.infinity,
//           width: 200,
//         ),
//         Expanded(
//             child: Container(
//                 color: Color.fromARGB(255, 207, 221, 13),
//                 height: double.infinity)),
//       ],
//     ));
//   }
// }
