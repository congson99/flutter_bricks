import 'package:flutter/material.dart';

class LoginPackageDemoPage extends StatelessWidget {
  const LoginPackageDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: const Center(
        child: Text("Demo Page"),
      ),
    );
  }
}
