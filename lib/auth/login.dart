import 'package:firebase_basics/auth/signup.dart';
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
                const CustomTextField(
                  mainTxt: 'Email',
                  hintTxt: 'Enter Your Email',
                ),
                const CustomTextField(
                  mainTxt: 'Password',
                  hintTxt: 'Enter Your Password',
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, right: 3),
                  alignment: Alignment.topRight,
                  child: const Text('Forget Password?',
                      style: TextStyle(
                        color: Color(0xFF424242),
                        fontSize: 17,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const MainButtonWithNotImage(
                color: Color(0xff2cc1ac), title: 'Login', height: 45),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              height: 45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onPressed: () {},
              color: const Color(0xff7b8c9c),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Login With',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/images/download (1).png',
                    width: 45,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Have An Account? ",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[700]),
                ),
                InkWell(

                  onTap:(){},
                  child:  const Text(
                    " Register",
                    style: TextStyle(fontSize: 17, color: Color(0xff2cc1ac),fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MainButtonWithNotImage extends StatelessWidget {
  const MainButtonWithNotImage({
    super.key,
    required this.color,
    required this.title,
    required this.height,
  });
  final Color color;
  final String title;
  final double height;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      onPressed: () {},
      color: color,
      child: Text(
        title,
        style: const TextStyle(fontSize: 17, color: Colors.white),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.mainTxt,
    required this.hintTxt,
  });
  final String mainTxt;
  final String hintTxt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mainTxt,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: hintTxt,
                hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                filled: true,
                fillColor: Colors.grey[250],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 67, 67, 67))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.grey))),
          ),
        ],
      ),
    );
  }
}
