import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const  CustomMainButton({
    super.key,
    this.title,
    this.image,
    this.color,
    this.onPressed,
    this.borderRadius,
  });
  final title;
  final image;
  final color;
  final void Function()? onPressed;
  final borderRadius;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      onPressed: onPressed,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
           title,
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          const SizedBox(
            width: 20,
          ),
          Image.asset(
            image,
            width: 45,
          )
        ],
      ),
    );
  }
}
