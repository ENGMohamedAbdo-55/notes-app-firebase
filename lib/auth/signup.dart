import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../component/custom_auth_logo.dart';
import '../component/custom_button.dart';
import '../component/text_form_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                const CustomAuthLogo(),
                const SizedBox(height: 10),
                const Text('SignUp',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                const Text('Login to continue  using the app',
                    style: TextStyle(color: Color(0xFF424242), fontSize: 17)),
                CustomTextField(
                  mainTxt: 'User Name',
                  hintTxt: 'Enter Your User Name',
                  myController: email,
                ),
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
            CustomMainButtonWithoutImg(
                onPressed: () async {
              
                  try {
                    final credential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: email.text,
                      password: Password.text,
                    );
                        Navigator.of(context).pushReplacementNamed("HomePage");
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                color: const Color(0xff2cc1ac),
                title: 'Login',
                height: 45),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Have An Account? ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]),
                ),
                const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff2cc1ac),
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
