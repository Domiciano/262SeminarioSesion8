import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  //Constructor
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/playlist');
            },
            child: Text("Iniciar sesión"),
          ),
        ),
      ),
    );
  }
}
