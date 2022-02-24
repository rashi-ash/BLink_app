import 'package:flutter/material.dart';

import 'functions/const.dart';

class ParentLogin extends StatefulWidget {
  const ParentLogin({Key? key}) : super(key: key);

  @override
  _ParentLoginState createState() => _ParentLoginState();
}

class _ParentLoginState extends State<ParentLogin> {
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
                          'images/parent-login.png',
                          // height: MediaQuery.of(context).size.height*.43,
                          // width: MediaQuery.of(context).size.width*.72,
                          height: 295,
                          width: 295,
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
                          padding: const EdgeInsets.only(bottom: 13, left: 25),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
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
                          padding: const EdgeInsets.only(bottom: 13, right: 15),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/ParentProfile');
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
