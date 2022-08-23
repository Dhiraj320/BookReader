import 'package:bookreader/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../reusable_widget/reusable_widget.dart';
import 'home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            //Color(0xFF9546C4),

            Color(0xFF1f1545),
            Color(0xFF1f1545)
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20.0, MediaQuery.of(context).size.height * 0.15, 20.0, 0.0),
          //The way of add image on screen
          //   child: Image.asset('assets/book.png'),
          // ),
          // The another way of add image with compress height and width of image
          child: Column(
            children: <Widget>[
              logoWidget("assets/book.png"),
              SizedBox(
                height: 30,
              ),
              reusableTextField("Enter Email", Icons.person_outline, false,
                  _emailTextController),
              SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, false,
                  _passwordTextController),
              SizedBox(
                height: 10,
              ),
              signInSignUpButton(context, true, () {
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                    .then((value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }).onError((error, stackTrace) {
                  print("Error ${error.toString()}");
                });
              }),
              signUpOption()
            ],
          ),
        ),
      ),
    ));
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account ?",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
