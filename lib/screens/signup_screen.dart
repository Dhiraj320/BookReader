import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../reusable_widget/reusable_widget.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: BackButton(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Sign Up",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                //Color(0xFF9546C4),
                //Colors.orange,
                //Color(0xFF9546C4),

                Color(0xFF1f1545),
                Color(0xFF1f1545)
                // Colors.tealAccent.shade100,
                // Colors.tealAccent.shade100,
                // Colors.blueAccent,
                // Colors.blueAccent,
                // Colors.green,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20.0, MediaQuery.of(context).size.height * 0.15, 20.0, 0.0),
              child: Column(
                children: <Widget>[
                  logoWidget("assets/book.png"),
                  SizedBox(
                    height: 5,
                  ),
                  reusableTextField("Enter Username", Icons.person_outline,
                      false, _userNameTextController),
                  SizedBox(
                    height: 15,
                  ),
                  reusableTextField("Enter Email Id", Icons.email_outlined,
                      false, _emailTextController),
                  SizedBox(
                    height: 15,
                  ),
                  reusableTextField("Enter Password", Icons.lock_outline, false,
                      _passwordTextController),
                  SizedBox(
                    height: 25,
                  ),
                  signInSignUpButton(context, false, () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                      print("Created New Account");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  })
                ],
              ),
            ),
          ),
        ));
  }
}
