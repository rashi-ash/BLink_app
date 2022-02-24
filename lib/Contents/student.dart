import 'package:blink/Contents/student-login.dart';
import 'package:flutter/material.dart';
import 'package:blink/Contents/functions/const.dart';

import 'functions/start.dart';

class Student1 extends StatefulWidget {
  const Student1({Key? key}) : super(key: key);

  @override
  _Student1State createState() => _Student1State();
}

class _Student1State extends State<Student1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kTextFieldDecoration,
        child: const Start(
          title: 'Student',
          quote1: 'Learning',
          quote2: 'Makes me',
          quote3: 'Happy',
          img: 'images/student1-page.png',
          nav: StudentLogin(),
        ),
      ),
    );
  }
}


