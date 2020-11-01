import 'package:first_project/signInButton.dart';
import 'package:first_project/socialMediaSignIn.dart';
import 'package:first_project/textFields.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    final _email = TextEditingController();
    final _password = TextEditingController();
    final _isActive = false;

    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("App"),
          ),
          body: Column(
            children: [
              CustomTextFields(email: _email, password: _password),
              SignInButton(email: _email, password: _password),
              Center(
                child: Text(
                  _email.text + "or",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              SocialMediaSignIn()
            ],
          )),
    );
  }
}
