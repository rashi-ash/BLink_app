import 'package:flutter/material.dart';

class StudentNavBar extends StatefulWidget {
  const StudentNavBar({Key? key}) : super(key: key);

  @override
  _StudentNavBarState createState() => _StudentNavBarState();
}

class _StudentNavBarState extends State<StudentNavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffF2F5EB), Color(0xff9DC8C8)]),
            ),
          ),
        ),
      ],
    );
  }
}
