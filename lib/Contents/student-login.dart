import 'package:blink/Contents/Dashboard/Student-dashboard.dart';
import 'package:blink/Contents/SignUp.dart';
import 'package:blink/Contents/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'functions/const.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({Key? key}) : super(key: key);

  @override
  _StudentLoginState createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  String email = "";
  String password = "";

  bool _isLoading = false;
  final _auth = FirebaseAuth.instance;

  void signInFunc() async {
    UserCredential authResult;

    try {
      authResult = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } catch (err) {
      var message = 'Error! Check your credential for mistakes';

      setState(() {
        _isLoading = false;
      });
      final snackBar = SnackBar(
        content: Text(
          message,
          style: const TextStyle(
              color: Color(0xffABAAAA),
              // color: Color(0xff388A75),y
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
        backgroundColor: const Color(0xffF9FFED),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  SignUpController signUpController = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  kTextFieldDecoration,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'Login',
                          style: TextStyle(
                              color: Color(0xffABAAAA),
                              // color: Color(0xff388A75),
                              fontFamily: 'Roboto',
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: 40,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        Image.asset(
                          'images/student-login.png',
                          // height: MediaQuery.of(context).size.height*.43,
                          // width: MediaQuery.of(context).size.width*.72,
                          height: 290,
                          width: 290,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 38, bottom: 5, left: 50, right: 50),
                          child: TextField(
                            cursorColor: const Color(0xff46665E),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              hintStyle:
                              const TextStyle(color: Color(0xffABAAAA)),
                              hintText: "Username",
                              fillColor:
                              const Color(0xffFDF9F9).withOpacity(0.35),
                            ),
                            onChanged: (val) {
                              email = val;
                            },
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 40, left: 50, right: 50),
                          child: TextField(
                            cursorColor: const Color(0xff46665E),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              hintStyle:
                              const TextStyle(color: Color(0xffABAAAA)),
                              hintText: "Password",
                              fillColor:
                              const Color(0xffFDF9F9).withOpacity(0.35),
                            ),
                            onChanged: (val) {
                              password = val;
                            },
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25, left: 25),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const SignUp())));
                            },
                            child: const Text(
                              ' Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                textStyle: const TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w800)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25, right: 15),
                          child: TextButton(
                            onPressed: () {
                              signInFunc();
                            },
                            child: const Icon(Icons.arrow_forward_rounded,
                                size: 30, color: Colors.white),
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
