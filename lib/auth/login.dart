import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Center(
                    child: Image.asset("assets/images/5590.jpg",
                        width: 120, height: 120)),
                const SizedBox(height: 10),
                const Text('Login',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                const Text('Login to continue  using the app',
                    style: TextStyle(color: Color(0xFF424242), fontSize: 17)),
                const SizedBox(
                  height: 25,
                ),
                const Text('Email'),
                TextFormField(
                
                  decoration: InputDecoration(
                   hintText: 'Enter Your Email',
                   hintStyle: const TextStyle(fontSize: 15,color: Colors.grey),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 10),
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Color.fromARGB(255, 67, 67, 67))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.grey))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
