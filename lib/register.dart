import 'package:flutter/material.dart';
import 'package:loginfigma/component/my_button.dart';
import 'package:loginfigma/component/my_textfield.dart';

import 'component/square_tile.dart';

class register extends StatefulWidget {
  register({Key? key}) : super(key: key);

  // Text editing
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUserIn() {
    // Implement your sign in logic here
  }

  @override
  State<register> createState() => _registersState();
}

class _registersState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              // Logo
              Icon(
                Icons.lock,
                size: 75,
              ),
              SizedBox(height: 20),
              // Welcome back
              Text(
                'Welcome Back ',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              // Username
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: MyTextField(
                  controller: widget.usernameController, // Use the widget's controller
                  hintext: 'Username', // Provide hint text
                  obsecuretext: false, // Specify if the text is obscured
                ),
              ),
              // Password
              MyTextField(
                controller: widget.passwordController, // Use the widget's controller
                hintext: 'Password', // Provide hint text
                obsecuretext: true, // Specify if the text is obscured
              ),
              const SizedBox(height: 10,),
              // Forgot
              Padding(
                padding: const EdgeInsets.only(right: 25.0,top: 5,bottom: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              // Sign in button
              MyButton(
                onTap: widget.signUserIn, // Assign the function reference
              ),
              SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        )

                    ),

                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                    ),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'asset/google.png',),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'asset/apple.png')
                ],
              ),

              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )

              // Google button
              // Other buttons
            ],
          ),
        ),
      ),
    );
  }
}