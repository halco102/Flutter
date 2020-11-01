import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController password;

  const CustomTextFields(
      {Key key, @required this.email, @required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(
              "Sing in",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'Email address'),
            controller: email,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: TextField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'Password'),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              child: Text(
                "Forgot password?",
                style: TextStyle(color: Colors.red, fontSize: 17),
              ),
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}

/*

   Center(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    "Sing in",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Email address'),
                  controller: _email,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Password'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
           

*/
