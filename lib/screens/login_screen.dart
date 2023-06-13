import 'package:flutter/material.dart';
import 'package:icall/resources/auth_method.dart';
import 'package:icall/widget/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final AuthMethod _authMethods = AuthMethod();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or join a meeting',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 38.0),
            child: Image.asset('asset/images/onboarding.jpg'),
          ),
          CustomButtom(
            text: "Sign In",
            onPressed: () async {
              // bool res = await _authMethods.signInWithGoogle(context);
              // if (res) {
              Navigator.pushNamed(context, '/home');
              // }
            },
          ),
        ],
      ),
    );
  }
}
