import 'package:blink/Contents/Functions/const.dart';
import 'package:flutter/material.dart';

import 'Teacher-ToggleBar.dart';

class TeacherDashboard extends StatefulWidget {
  const TeacherDashboard({Key? key}) : super(key: key);

  @override
  _TeacherDashboardState createState() => _TeacherDashboardState();
}

class _TeacherDashboardState extends State<TeacherDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: kTextFieldDecoration,
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 33, top: 115),
                  child: Text(
                    'Dashboard',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontFamily: 'Rockwell', fontSize: 35),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 29, right: 29),
                  child: TeacgerToggleBar(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, bottom: 14, right: 25),
                      child: TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'images/addicon.png',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
