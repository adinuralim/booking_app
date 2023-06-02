import 'package:booking_app/data/src/img_string.dart';
import 'package:flutter/material.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(ImgString.plants2),
    );
  }
}
