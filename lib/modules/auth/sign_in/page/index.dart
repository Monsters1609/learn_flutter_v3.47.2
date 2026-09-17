import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => SignIn();
}
class SignIn extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text('Sign In Page'),
      ),
    );
  }
}