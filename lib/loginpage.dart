import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool showpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.blue,
                filled: true,
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(height: 10),

            TextField(
              obscureText: showpassword,
              maxLength: 4,
              decoration: InputDecoration(
                counterText: "",
                fillColor: Colors.blue,
                filled: true,
                suffixIcon: GestureDetector(
                  onTap: () {
                    showpassword = !showpassword;
                    setState(() {
                      
                    });
                  },
                  child: Icon(Icons.remove_red_eye),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
