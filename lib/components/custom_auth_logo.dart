import 'package:flutter/material.dart';

class CustomAuthLogo extends StatelessWidget {
  const CustomAuthLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset("assets/images/5590.jpg",
            width: 120, height: 120));
  }
}