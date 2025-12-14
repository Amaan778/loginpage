import 'package:flutter/material.dart';

class logintwo extends StatefulWidget {
  const logintwo({super.key});

  @override
  State<logintwo> createState() => _logintwoState();
}

class _logintwoState extends State<logintwo> {
   TextEditingController username = TextEditingController();
  TextEditingController passowrd = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isLogin ? "Login" : "SignUp")),
      body: Form(
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isLogin ?  SizedBox():TextFormField() ,
            TextFormField(
              controller: username,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter value";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(controller: passowrd),

            ElevatedButton(
              onPressed: () {
                if (key.currentState!.validate()) {
                  print("Success");
                }
              },
              child: Text("Login"),
            ),

            SizedBox(height: 10),

            GestureDetector(
              onTap: () {
                isLogin = !isLogin;
                setState(() {});
              },
              child: Text(
                isLogin ? "New user? Sign Up" : "Already an user ? Login",
                
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
