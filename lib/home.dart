import 'package:flutter/material.dart';
import 'package:test_app/loginScreen.dart';

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Tanvir's App",
//           style: TextStyle(color: Color.fromARGB(255, 2, 99, 138)),
//         ),
//         titleSpacing: 5,
//         centerTitle: true,
//         // centerTitle: true,
//         toolbarHeight: 60, //Defoult height 60
//         toolbarOpacity: 1,
//         elevation: 10,
//         backgroundColor: Color.fromARGB(255, 172, 103, 39),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 print("Tanvir");
//               },
//               icon: Icon(Icons.access_alarms_outlined)),
//           IconButton(
//               onPressed: () {
//                 print("Polin");
//               },
//               icon: Icon(Icons.accessible_forward))
//         ],
//       ),
//       body: StoryFb(),

//       // Center(
//       //   child: Text("Heyyaa Tanvir!!!"),
//       // ),
//       drawer: Container(),
//       endDrawer: Container(),
//       // bottomNavigationBar: Container(),// AppBer button is not working
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         elevation: 10,
//         child: Icon(Icons.add_box_rounded),
//         backgroundColor: Colors.greenAccent,
//       ),
//     );
//   }
// }

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             bottom: TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.abc_sharp)),
//                 Tab(icon: Icon(Icons.access_alarm_rounded)),
//                 Tab(
//                   icon: Icon(Icons.accessibility_new_sharp),
//                 )
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [Page1(), Page2(), Page3()],
//           ),
//         ));
//   }
// }

// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   var _currentState = 0;
//   final pages = [
//     Page1(),
//     Page2(),
//     Page3(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//             currentIndex: _currentState,
//             items: [
//               BottomNavigationBarItem(
//                   label: "Alarm", icon: Icon(Icons.access_alarm)),
//               BottomNavigationBarItem(
//                   label: "Zoom", icon: Icon(Icons.zoom_in_map)),
//               BottomNavigationBarItem(
//                   label: "Wrap", icon: Icon(Icons.wrap_text_rounded)),
//             ],
//             onTap: (index) {
//               setState(() {
//                 _currentState = index;
//               });
//             }),
//         body: pages[_currentState]);
//   }
// }

// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   PageController _controller = PageController(initialPage: 0);

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         scrollDirection: Axis.vertical,
//         controller: _controller,
//         children: [
//           Page1(),
//           Page2(),
//           Page3(),
//           Page1(),
//         ],
//       ),
//     );
//   }
// }

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.count(
//           crossAxisCount: 8,
//           mainAxisSpacing: 5,
//           crossAxisSpacing: 5,
//           children: [
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.yellow,
//             ),
//             Container(
//               color: Colors.grey,
//             ),
//             Container(
//               color: Colors.brown,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final pages = [
//       Page1(),
//       Page2(),
//       Page3(),
//       Page1(),
//     ];

//     return Scaffold(
//       body: LiquidSwipe(
//         pages: pages,
//         slideIconWidget: Icon(Icons.arrow_back),
//         fullTransitionValue: 500,
//         waveType: WaveType.circularReveal,
//         positionSlideIcon: 0.5,
//       ),
//     );
//   }
// }

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var customHeight = MediaQuery.of(context).size.height;
//     var customWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: Center(
//         child: Container(
//           child: Center(
//               child: Text(
//             "Abeeeer Va i",
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//           )),
//           height: customWidth / 5,
//           width: customWidth / 2,
//           color: Colors.amber,
//         ),
//       ),
//     );
//   }
// }

// class MyHome extends StatelessWidget {
//   const MyHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           ListTile(
//             title: Text("Abir vai"),
//             subtitle: Text("01846446341674"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Polin"),
//             subtitle: Text("015674652546"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Abeer"),
//             subtitle: Text("015746254765"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Abir vai"),
//             subtitle: Text("01846446341674"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Polin"),
//             subtitle: Text("015674652546"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Abeer"),
//             subtitle: Text("015746254765"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//           ListTile(
//             title: Text("Tile 1"),
//             subtitle: Text("subtitle subtitle"),
//             leading: CircleAvatar(
//               child: Icon(Icons.add_call),
//             ),
//             trailing: Icon(Icons.account_circle),
//           ),
//         ],
//       ),
//     );
//   }
// }

// using LoginScreen
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginScreen());
  }
}
