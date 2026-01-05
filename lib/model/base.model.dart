import 'package:flutter/painting.dart';

class Basemodel {
  String name;
  String image;

  VoidCallback onPressed;

  Basemodel({required this.name, required this.image, required this.onPressed});
}
