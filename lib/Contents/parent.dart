import 'package:blink/Contents/parent-login.dart';
import 'package:flutter/material.dart';
import 'package:blink/Contents/functions/const.dart';
import 'functions/start.dart';
class Parent1 extends StatefulWidget {
  const Parent1({Key? key}) : super(key: key);

  @override
  _Parent1State createState() => _Parent1State();
}

class _Parent1State extends State<Parent1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kTextFieldDecoration,
        child: const Start(
            title: 'Parent',
            quote1: 'Kids matter,',
            quote2: 'no matter,',
            quote3:  'what',
            img: 'images/parent1-page.png',
            nav: ParentLogin(),
        ),
      ),
    );
  }
}
