import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_app/firebase_options.dart';
import 'package:test_app/home2.dart';
import 'package:test_app/loginScreen.dart';
import 'package:test_app/registration.dart';
import 'package:test_app/rest_api_call/rest_api.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color.fromARGB(252, 98, 218, 1))),
        initialRoute: "/restApi",
        routes: {
          "/myHome": (context) => FurnitureMain(),
          "/restApi": (context) => RestApi(),
          "/login": (context) => LoginScreen(),
          "/registration": (context) => Registration(
                title: "Registration Page",
              )
        },
        darkTheme: ThemeData(primarySwatch: Colors.cyan),
        debugShowCheckedModeBanner: false,
        // home: MyHome());
        // home: const FurnitureMain());
        home: const RestApi());
  }
}
