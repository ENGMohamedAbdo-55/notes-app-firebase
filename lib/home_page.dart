import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.cyan,
      title: const Center(
        child: Text(
          "firebase basic",
        ),
      ),
      
    ));
  }
}
