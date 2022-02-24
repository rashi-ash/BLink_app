import 'package:blink/Contents/parent-profile-edit.dart';
import 'package:blink/Contents/student-profile-edit.dart';
import 'package:blink/Contents/teacher-profile-edit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String fullName = "";
  String email = "";
  String user = "";
  String phone = "";
  String password = "";

  bool _isLoading = false;
  final _auth = FirebaseAuth.instance;

  void signUpFunc() async {
    UserCredential authResult;

    try {
      setState(() {
        _isLoading = true;
      });
      authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      await FirebaseFirestore.instance
          .collection('users')
          .doc(authResult.user?.uid)
          .set({
        'fullName': fullName,
        'email': email,
        'phone': phone,
        'UserType': user,
      });
      switch (user) {
        case 'student':
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => StudentProfileEdit())));
          break;
        case 'Student':
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => StudentProfileEdit())));
          break;
        case 'parent':
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => const ParentProfileEdit())));
          break;
        case 'Parent':
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => const ParentProfileEdit())));
          break;
        case 'teacher':
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => const TeacherProfileEdit())));
          break;
        case 'Teacher':
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => const TeacherProfileEdit())));
          break;
      }
    } catch (err) {
      var message = 'Error! Something went wrong!';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffF9FFED), Color(0xffA4DADA)]),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  children: <Widget>[
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color(0xffABAAAA),
                              // color: Color(0xff388A75),y
                              fontFamily: 'Roboto',
                              fontSize: 18),
                        ),
                        SizedBox(
                          width: 40,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 52,
                    ),
                    const Center(
                      child: Text(
                        'Lets get started!',
                        style: TextStyle(
                            color: Colors.black87,
                            // color: Color(0xff388A75),
                            fontFamily: 'Rockwell',
                            fontSize: 33,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 60, bottom: 5, left: 50, right: 50),
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
                          hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Full Name",
                          fillColor: const Color(0xffFDF9F9).withOpacity(0.39),
                        ),
                        onChanged: (val) {
                          fullName = val;
                        },
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 5, left: 50, right: 50),
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
                          hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Email",
                          fillColor: const Color(0xffFDF9F9).withOpacity(0.38),
                        ),
                        onChanged: (val) {
                          email = val;
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 50, right: 50),
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
                          hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "User (Hint: Student/Parent/Teacher)",
                          fillColor: const Color(0xffFDF9F9).withOpacity(0.38),
                        ),
                        onChanged: (val) {
                          user = val;
                        },
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 50, right: 50),
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
                          hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Phone number",
                          fillColor: const Color(0xffFDF9F9).withOpacity(0.35),
                        ),
                        onChanged: (val) {
                          phone = val;
                        },
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 20, left: 50, right: 50),
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
                          hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Password",
                          fillColor: const Color(0xffFDF9F9).withOpacity(0.35),
                        ),
                        onChanged: (val) {
                          password = val;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, bottom: 20, right: 15),
                          child: TextButton(
                            onPressed: () {
                              signUpFunc();
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
            ],
          ),
        ),
      ),
    );
  }
}
