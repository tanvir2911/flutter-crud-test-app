import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 35.0,
                ),
                // Container(
                //   height: 200,
                //   width: 200,
                //   decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       image: DecorationImage(
                //           image: AssetImage("images/login.png"))),
                // ),
                SizedBox(
                  height: 1.0,
                ),
                Text(
                  "Login Now",
                  style: GoogleFonts.aclonica(
                    textStyle: TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(height: 1.0),
                        TextField(
                          controller: emailTextEditingController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(fontSize: 20.0)),
                        ),
                        TextField(
                          controller: passwordTextEditingController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: false,
                          decoration: InputDecoration(labelText: "Password,"),
                        ),
                        SizedBox(height: 20.0),
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.amberAccent),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        side: BorderSide(color: Colors.red)))),
                            child: Container(
                                height: 50.0,
                                child: Text("Login",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ))),
                            onPressed: () {
                              if (!emailTextEditingController.text
                                  .contains("@")) {
                                displayToastMessage("Invalid email");
                              } else if (passwordTextEditingController
                                      .text.length <
                                  6) {
                                displayToastMessage("Invalid password");
                              } else {
                                displayToastMessage("Successful!!!");
                              }
                            }),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, "/registration", (route) => false);
                            },
                            child: Text("Go to registration page"))
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}

displayToastMessage(String message) {
  Fluttertoast.showToast(msg: message);
}
