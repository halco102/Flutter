import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class SocialMediaSignIn extends StatelessWidget {
  const SocialMediaSignIn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: FacebookSignInButton(
            borderRadius: 10,
            onPressed: () {},
            centered: true,
          ),
        ),
        GoogleSignInButton(
          borderRadius: 10,
          onPressed: () {},
          centered: true,
        )
      ],
    );
  }
}

/*
Padding(
                padding: const EdgeInsets.all(20.0),
                child: FacebookSignInButton(
                  borderRadius: 10,
                  onPressed: () {},
                  centered: true,
                ),
              ),
              GoogleSignInButton(
                borderRadius: 10,
                onPressed: () {},
                centered: true,
              )
*/
