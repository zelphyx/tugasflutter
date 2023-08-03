import 'dart:html';

import 'package:flutter/material.dart';

import 'main.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Colors.blue,Colors.deepPurple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    ),
    ),




child: Column(
  children: [
    SizedBox(height: 20), // Spasi untuk memisahkan judul dan gambar
    CircleAvatar(
      radius: 150, // Ukuran gambar akan dua kali lebih besar dari sebelumnya
      backgroundImage: AssetImage('asset/pict.png'), // Ganti dengan path gambar profil
    ),
    SizedBox(height: 20),
    Text(
      'Login',
      style: TextStyle(
        color: Color(0xFFFB0CD5),
        fontSize: 44,
        fontFamily: 'Inter',
        fontWeight: FontWeight.bold,
      ),
    ),
    SizedBox(height: 60,),


    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Set to MainAxisSize.min
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Flexible( // Use Flexible instead of Expanded
            fit: FlexFit.loose, // Use FlexFit.loose
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Username Anda',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                fillColor: Colors.white, // Warna background input
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Password',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Flexible( // Use Flexible instead of Expanded
            fit: FlexFit.loose, // Use FlexFit.loose
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Masukkan Password Anda',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                fillColor: Colors.white, // Warna background input
              ),
            ),
          ),
        ],
      ),
    ),

    Padding(
        padding: const EdgeInsets.only(top: 80, left: 40, right: 40,bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                ),
                child: const Text('Login'),
              ),
            ),
],
    ),
      ),
    const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Text(
            'Belum memiliki akun?',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          "Daftar",
          style: TextStyle(
              fontSize: 16,
              color: Color(0xFFFB0CD5),
              fontWeight: FontWeight.bold
          ),
        )
      ],
    )
  ],

),
),
    );
  }
}
