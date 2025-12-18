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
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),),

            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text("Email",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 18),),
            ),

            TextField(),
          ],
        ),
      ),


    );
  }
}
