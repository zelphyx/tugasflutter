import 'package:flutter/material.dart';
import 'package:loginfigma/component/my_button.dart';
import 'package:loginfigma/component/my_textfield.dart';
import 'package:loginfigma/login.dart';

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
          child: ListView( // Menggunakan ListView di sini
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
            children: [
              Icon(
                Icons.lock,
                size: 75,
              ),
              SizedBox(height: 20),
              Text(
                'Welcome ',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: MyTextField(
                  controller: widget.usernameController,
                  hintext: 'Username',
                  obsecuretext: false,
                ),
              ),
              MyTextField(
                controller: widget.passwordController,
                hintext: 'Password',
                obsecuretext: true,
              ),
              const SizedBox(height: 10,),
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
              MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        Login()), // Ganti HalamanBaru dengan halaman yang ingin Anda pindah ke sana
                  );
                },
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
                  SquareTile(imagePath: 'asset/google.png',),
                  SizedBox(width: 25),
                  SquareTile(imagePath: 'asset/apple.png')
                ],
              ),
              const SizedBox(height: 50),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}