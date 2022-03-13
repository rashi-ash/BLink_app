import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Functions/const.dart';
import '../../student-profile-view.dart';
import '../Teacher/Teacher-Classroom/Teacher-Timetable.dart';
import 'Student-Togglebar.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({Key? key}) : super(key: key);

  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
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
                Padding(
                  padding: const EdgeInsets.only(top: 35, right: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Time Table',
                        style: TextStyle(
                            fontSize: 14,
                            //fontFamily: 'Poppins',
                            color: Color(0xff716A6A),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                    const TeacherTimeTable())));
                          },
                          child: Image.asset(
                            'images/calenderIcon.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 33, top: 50),
                  child: Text(
                    'Dashboard',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontFamily: 'Rockwell', fontSize: 35),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: StudentToggleBar(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}