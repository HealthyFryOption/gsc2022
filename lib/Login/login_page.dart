library login;

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final SizedBox _spacer = SizedBox.fromSize(size: const Size(100, 25));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                _spacer,
                const Text(
                  'Charity Radar brings you the closest charity organisation where you can donate your unwanted items',
                ),
                _spacer,
                const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                _spacer,
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                _spacer,
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  obscuringCharacter: '*',
                ),
                _spacer,
                OutlinedButton(
                  onPressed: () {
                    debugPrint("Hello");
                  },
                  child: const Text("Sign In"),
                ),
              ],
            ),
            decoration: BoxDecoration(
              // color: const Color.fromARGB(128, 33, 150, 243),
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.all(32.0),
            constraints: const BoxConstraints.expand(width: 400, height: 600),
          ),
        ),
        padding: const EdgeInsets.all(32.0),
      ),
    );
  }
}
