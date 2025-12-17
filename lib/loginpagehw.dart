import 'package:flutter/material.dart';

class loginpagehw extends StatefulWidget {
  const loginpagehw({super.key});

  @override
  State<loginpagehw> createState() => _loginpagehwState();
}

class _loginpagehwState extends State<loginpagehw> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            

            Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
        
            Text("enter name"),
          ],
        ),
      ),


    );
  }
}
