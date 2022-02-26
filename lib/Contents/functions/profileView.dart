import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  final String text;
  const ProfileView({
    Key? key,
    required this.text,
  }) : super(key: key);

  // final StudentProfile widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Text(
        text,
        style: const TextStyle(
            color: Color(0xff5a5959),
            // color: Color(0xff388A75),
            fontFamily: 'Rockwell',
            fontSize: 20,
            fontWeight: FontWeight.normal),
      ),
    );
  }
}
