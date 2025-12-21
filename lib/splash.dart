import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpagehw.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    
    // TODO: implement initState
    super.initState();
  }
  // @override
  // void initState() {
  //   Timer(Duration(seconds: 5), () {
  //      Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => loginpagehw()),
  //     );
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("splash screen"),
      ),
    );
  }
}
