import 'package:firebase_basics/components/text_form_field.dart';
import 'package:flutter/material.dart';

import '../components/custom_auth_logo.dart';
import '../components/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController(); 
  TextEditingController Password = TextEditingController(); 
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
              const  CustomAuthLogo(),
                const SizedBox(height: 10),
                const Text('Login',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                const Text('Login to continue  using the app',
                    style: TextStyle(color: Color(0xFF424242), fontSize: 17)),
                 CustomTextField(
                  mainTxt: 'Email',
                  hintTxt: 'Enter Your Email',
                  myController: email,
                ),
                 CustomTextField(
                  mainTxt: 'Password',
                  hintTxt: 'Enter Your Password',
                myController: Password,
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
             MainButtonWithNotImage(
              onPressed: (){},
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
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Have An Account? ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    " Register",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff2cc1ac),
                        fontWeight: FontWeight.bold),
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



