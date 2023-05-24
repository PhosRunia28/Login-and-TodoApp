import 'package:flutter/material.dart';
import '../screens/home.dart';
// import '../screens/home.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  signUserIn(BuildContext context) {
    if (usernameController.text == "admin" &&
        passwordController.text == "admin") {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Home()),
      );
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              // logo
              const Icon(
                Icons.lock,
                size: 150,
              ),

              const SizedBox(height: 35),

              // welcome back
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 22,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),

              const SizedBox(height: 20),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign-in button
              MyButton(
                onTap: () => signUserIn(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
