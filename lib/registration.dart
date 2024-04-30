import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key, required this.title});
  final String title;

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  String _name = '';
  String _email = '';
  String _maritalStatus = '';
  int _age = 0;
  int _selectedGender = 0;

  List<DropdownMenuItem<int>> genderList = [];

  void loadGenderList() {
    genderList.add(const DropdownMenuItem(
      child: Text("Male"),
      value: 0,
    ));
    genderList.add(const DropdownMenuItem(
      child: Text("Female"),
      value: 1,
    ));
    genderList.add(const DropdownMenuItem(
      child: Text("Others"),
      value: 2,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: ListView(
      children: getFormWidget(),
    ));
  }

  List<Widget> getFormWidget() {
    List<Widget> formWidget = [];

    formWidget.add(TextFormField(
      decoration:
          const InputDecoration(labelText: "Enter Name", hintText: "Name"),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a name';
        } else {
          return value;
        }
      },
      onChanged: (value) {
        print(value.toString());
        _name = value.toString();
      },
    ));

    validateEmail(String? value) {
      if (value!.isEmpty) {
        return 'Please enter mail';
      }

      Pattern pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = RegExp(pattern.toString());
      if (!regex.hasMatch(value.toString())) {
        return 'Enter Valid Email';
      } else {
        return null;
      }
    }

    ;

    formWidget.add(TextFormField(
      decoration:
          const InputDecoration(labelText: "Enter Email", hintText: "Email"),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        validateEmail(value);
      },
      onChanged: (value) {
        _email = value.toString();
      },
    ));

    formWidget.add(TextFormField(
      decoration:
          const InputDecoration(labelText: "Enter Age", hintText: "Age"),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter age';
        } else {
          return value;
        }
      },
      onChanged: (value) {
        print(value.toString());
        _age = int.parse(value.toString());
      },
    ));

    formWidget.add(DropdownButton(
      items: genderList,
      hint: const Text("Select Gender"),
      value: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = int.parse(value.toString());
        });
      },
      isExpanded: true,
    ));

    formWidget.add(Column(
      children: <Widget>[
        RadioListTile<String>(
            title: const Text('Single'),
            value: 'single',
            groupValue: _maritalStatus,
            onChanged: (value) {
              setState(() {
                _maritalStatus = value.toString();
              });
            }),
        RadioListTile<String>(
            title: const Text('Married'),
            value: 'married',
            groupValue: _maritalStatus,
            onChanged: (value) {
              setState(() {
                _maritalStatus = value.toString();
              });
            }),
      ],
    ));

    return formWidget;
  }
}




// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// import 'loginScreen.dart';

// class RegistrationScreen extends StatelessWidget {
//   RegistrationScreen({Key? key}) : super(key: key);

//   static String idScreen = "register";

//   TextEditingController nameTextEditingController = TextEditingController();
//   TextEditingController emailTextEditingController = TextEditingController();
//   TextEditingController phoneTextEditingController = TextEditingController();
//   TextEditingController passwordTextEditingController = TextEditingController();


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 20.0,
//               ),
//               Image(
//                 image: AssetImage("images/logo.png"),
//                 width: 390.0,
//                 height: 250.0,
//                 alignment: Alignment.center,
//               ),
//               SizedBox(
//                 height: 1.0,
//               ),
//               Text(
//                 "Register as a Rider",
//                 style: TextStyle(fontSize: 25, fontFamily: "bolt-semibold"),
//                 textAlign: TextAlign.center,
//               ),
//               Padding(
//                 padding: EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 1.0,
//                     ),
//                     TextField(
//                       controller: nameTextEditingController,
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecoration(
//                         labelText: "Name",
//                         labelStyle: TextStyle(
//                           fontSize: 14.0,
//                         ),
//                         // hintText: "Email",
//                         hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
//                       ),
//                       style: TextStyle(fontSize: 14.0),
//                     ),
//                     SizedBox(
//                       height: 1.0,
//                     ),
//                     TextField(
//                       controller: emailTextEditingController,
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecoration(
//                         labelText: "Email",
//                         labelStyle: TextStyle(
//                           fontSize: 14.0,
//                         ),
//                         // hintText: "Email",
//                         hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
//                       ),
//                       style: TextStyle(fontSize: 14.0),
//                     ),
//                     SizedBox(
//                       height: 1.0,
//                     ),
//                     TextField(
//                       controller: phoneTextEditingController,
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecoration(
//                         labelText: "Phone",
//                         labelStyle: TextStyle(
//                           fontSize: 14.0,
//                         ),
//                         // hintText: "Email",
//                         hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
//                       ),
//                       style: TextStyle(fontSize: 14.0),
//                     ),
//                     SizedBox(
//                       height: 1.0,
//                     ),
//                     TextField(
//                       controller: passwordTextEditingController,
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         labelText: "Password",
//                         labelStyle: TextStyle(
//                           fontSize: 14.0,
//                         ),
//                         // hintText: "Email",
//                         hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
//                       ),
//                       style: TextStyle(fontSize: 14.0),
//                     ),
//                     SizedBox(
//                       height: 10.0,
//                     ),
//                     SizedBox(
//                       height: 10.0,
//                     ),
//                     TextButton(
//                       style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.yellow),
//                           shape:
//                               MaterialStateProperty.all<RoundedRectangleBorder>(
//                                   RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(24.0),
//                             // side: BorderSide(color: Colors.red)
//                           ))),
//                       child: Container(
//                         height: 50.0,
//                         child: Center(
//                           child: Text(
//                             "Registration",
//                             style: TextStyle(
//                                 fontSize: 18.0,
//                                 fontFamily: "bolt-semibold",
//                                 color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       onPressed: () {
//                         // print("Registration Button Clicked");
//                         if (nameTextEditingController.text.length < 4) {
//                           displayToastMessage( "Name must be atlast 3 characters. ", context);
//                         } else if (!emailTextEditingController.text
//                             .contains("@")) {
//                           displayToastMessage(
//                               "Please provide a valid email. ", context);
//                         } else {
//                           registerNewUser(context);
//                         }
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               TextButton(
//                   onPressed: () {
//                     // print("Registered Button Clicked");

//                     Navigator.pushNamedAndRemoveUntil(
//                         context, "/login", (route) => false);
//                   },
//                   child: Text("Already have an Account? Login Here"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//   void registerNewUser(BuildContext context) async {
//     // final User? user = (await _firebaseAuth
//     //         .createUserWithEmailAndPassword(
//     //             email: emailTextEditingController.text,
//     //             password: passwordTextEditingController.text)
//     //         .catchError((errMsg) {
//     //   displayToastMessage("Error: " + errMsg.toString(), context);
//     // }))
//     //     .user;

//     // if (user != null) {
//     //   Map userDataMap = {
//     //     "name": nameTextEditingController.text.trim(),
//     //     "email": emailTextEditingController.text.trim(),
//     //     "phone": phoneTextEditingController.text.trim(),
//     //   };
//     //   usersRef.child(user.uid).set(userDataMap);
//     //
//     //   displayToastMessage("User created", context);
//     //   Navigator.pushNamedAndRemoveUntil(
//     //       context, MainScreen.idScreen, (route) => false);
//     // } else {
//     //   displayToastMessage("User not created", context);
//     // }
// //      final uid = user.uid;
//   }
// }

// displayToastMessage(String message, BuildContext context) {
//   Fluttertoast.showToast(msg: message);
// }
