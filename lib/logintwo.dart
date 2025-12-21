import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/sharedfile.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  writeData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("username", username.text);
    prefs.setString("password", passowrd.text);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => dashboard()),
    );
    setState(() {});
  }

  readData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getString("username");
    prefs.getString("password");
    setState(() {});
  }

  @override
  void initState() {
    readData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isLogin ? "Login" : "SignUp")),
      body: Form(
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isLogin ? SizedBox() : TextFormField(),
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
                  writeData();
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
