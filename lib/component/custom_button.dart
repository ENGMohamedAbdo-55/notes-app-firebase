import 'package:flutter/material.dart';

class MainButtonWithNotImage extends StatelessWidget {
  const MainButtonWithNotImage({
    Key? key,
    required this.color,
    required this.title,
    required this.height, this.onPressed,
  }) : super(key: key);
  final Color color;
  final String title;
  final double height;
  final void Function()? onPressed;
 

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      onPressed: onPressed,
      color: color,
      child: Text(
        title,
        style: const TextStyle(fontSize: 17, color: Colors.white),
      ),
    );
  }
}

