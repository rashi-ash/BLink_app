import 'package:blink/Contents/SignUp.dart';
import 'package:blink/Contents/signup_controller.dart';
import 'package:blink/Contents/teachers-profile-view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'functions/const.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class TeacherLogin extends StatefulWidget {
  const TeacherLogin({Key? key}) : super(key: key);
  @override
  _TeacherLoginState createState() => _TeacherLoginState();
}
class _TeacherLoginState extends State<TeacherLogin> {
  //firebase started
  String email = "";
  String password = "";

  bool _isLoading = false;
  final _auth = FirebaseAuth.instance;

  void signInFunc() async {
    print(password);
    //  UserCredential authResult;
    setState(() {
      _isLoading = true;
    });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => const TeacherProfile())));
      setState(() {
        _isLoading = false;
      });

    } catch (err) {
      var message = 'Error! Check your credential for mistakes';


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
  // firebase ended

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: _isLoading,
        child: Container(
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
                      login,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          Image.asset(
                            'images/teacher-login.png',
                            // height: MediaQuery.of(context).size.height*.43,
                            // width: MediaQuery.of(context).size.width*.72,
                            height: 300,
                            width: 300,
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
                                top: 10, bottom: 30, left: 50, right: 50),
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
                            height: MediaQuery.of(context).size.height * .001,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 14, left: 25),
                            child: TextButton(
                              onPressed: () {
                               // Navigator.pushNamed(context, '/signup');
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>  const SignUp(user_n: 'Teachers',))
                                    ));
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
                            padding: const EdgeInsets.only(bottom: 14, right: 15),
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
      ),
    );
  }
}
