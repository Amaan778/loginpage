import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool showpassword = true;
  TextEditingController userlogin = TextEditingController();
  TextEditingController password = TextEditingController();
  bool islogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userlogin,
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
              controller: password,
              obscureText: showpassword,
              maxLength: 4,
              decoration: InputDecoration(
                counterText: "",
                fillColor: Colors.blue,
                filled: true,
                suffixIcon: GestureDetector(
                  onTap: () {
                    showpassword = !showpassword;
                    setState(() {});
                  },
                  child: GestureDetector(
                    onTap: () => {print("clicking")},
                    child: Icon(Icons.remove_red_eye),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(height: 10),

            islogin?
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
                    setState(() {});
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ):
            // SizedBox(height: 20),

            SizedBox(height: 10),

            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(0),
                  ),
                  elevation: 10,
                ),

                onPressed: () {
                  if (userlogin.text == 'amaan' && password.text == '1234') {
                    print("login success");
                  } else {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("login failed")));
                  }
                },
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
