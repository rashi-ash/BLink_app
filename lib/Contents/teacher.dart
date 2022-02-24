
import 'package:blink/Contents/teacher-login.dart';
import 'package:flutter/material.dart';
import 'package:blink/Contents/functions/const.dart';
import 'functions/start.dart';
class Teacher1 extends StatefulWidget {
  const Teacher1({Key? key}) : super(key: key);

  @override
  _Teacher1State createState() => _Teacher1State();
}
class _Teacher1State extends State<Teacher1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kTextFieldDecoration,
        child: const Start(
          title: 'Teacher',
            quote1: 'We broad',
            quote2: 'little minds,',
            quote3:  'genius',
          img: 'images/teaching1-page.png',
          nav: TeacherLogin()
        ),
      ),
    );
  }
}

