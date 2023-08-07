import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {

  final Function()? onTap;

  const MyButton({Key? key, required,this.onTap}) : super(key: key);

@override
State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),

        ),
        child: const Center(
            child: Text("sign in",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),)
        ),
      ),
    );
  }
}
