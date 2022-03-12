
import 'package:flutter/material.dart';

const teacherattndnctxt = TextStyle(
  // color: Colors.black87,
    color: Color(0xff696868),
    fontFamily: 'Roboto',
    fontSize: 20,
    fontWeight: FontWeight.normal);

const timetabletext = TextStyle(
    color: Colors.black,
    fontFamily: 'Rockwell',
    fontSize: 17,
    fontWeight: FontWeight.bold);

const timetablenum = TextStyle(
    fontFamily: 'Rockwell', fontSize: 27, fontWeight: FontWeight.w400);

const kTextFieldDecoration= BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topCenter,
end: Alignment.bottomCenter,
colors: [Color(0xffF9FFED), Color(0xffA4DADA)]),
);
const kTextFieldDecoration2 = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xffFAFFE8), Color(0xff94DFDF)]),
);
const kTextStyle=TextStyle(
// color: Colors.black87,
color: Color(0xff282828),
fontFamily: 'Roboto',
fontSize: 45,
fontWeight: FontWeight.w600);

final login= Row(
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
);
