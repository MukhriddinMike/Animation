// * purpose: show the image in the screen
import 'package:flutter/material.dart';

class Cat extends StatelessWidget {
  const Cat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network('https://imgur.com/gxu2XO9');
  }
}
