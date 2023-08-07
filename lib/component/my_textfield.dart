import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final controller;
  final String hintext;
  final bool obsecuretext;

  const MyTextField({
    Key? key, // Add Key? here
    required this.controller,
    required this.hintext,
    required this.obsecuretext,
  }) : super(key: key); // Add the required keyword here

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obsecuretext,
        decoration: InputDecoration(
          hintText: widget.hintext,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
      ),
    );
  }
}
