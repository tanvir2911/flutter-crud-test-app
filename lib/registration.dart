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
