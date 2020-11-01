import 'package:flutter/material.dart';

class SignInButton extends StatefulWidget {
  TextEditingController email;
  TextEditingController password;

  SignInButton({Key key, @required this.email, @required this.password})
      : super(key: key);
  @override
  _SignInButtonState createState() => _SignInButtonState();
}

final String EMAIL = "test@email.com";
final String PASSWORD = "test123";

void verification(String email, String password) {
  if (EMAIL == email && PASSWORD == password) {
    print("Welcome " + EMAIL);
  } else if (EMAIL != email) {
    print("Wrong email address");
  } else
    print("Wrong password");
}

class _SignInButtonState extends State<SignInButton> {
  bool _isActive = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      margin: EdgeInsets.only(bottom: 20),
      child: RaisedButton(
        child: Text(
          'Log in',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: _isActive
            ? () {
                setState(() {
                  _isActive = false;
                });
              }
            : null,
      ),
    );
  }
}

/*
  Container(
                width: 350,
                height: 50,
                margin: EdgeInsets.only(bottom: 20),
                child: RaisedButton(
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () => verification(_email.text, _password.text),
                ),
              ),
              
 */
