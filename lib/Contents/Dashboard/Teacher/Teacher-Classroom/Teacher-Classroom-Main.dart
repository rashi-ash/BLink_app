import 'package:blink/Contents/Dashboard/Teacher/Teacher-Classroom/Teacher-Student-List.dart';
import 'package:flutter/material.dart';

import 'Teacher-Assignment.dart';
import 'Teacher-Attendance.dart';
import 'Teacher-Notice.dart';
import 'Teacher-Timetable.dart';

class TeacherClassroomMain extends StatefulWidget {
  const TeacherClassroomMain({Key? key}) : super(key: key);

  @override
  State<TeacherClassroomMain> createState() => _TeacherClassroomMainState();
}

class _TeacherClassroomMainState extends State<TeacherClassroomMain> {
  int index = 0;
  final screens = const [
    TeacherStudentList(),
    TeacherTimeTable(),
    TeacherNotice(),
    TeacherAssignments(),
    TeacherAttendance(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Color(0xff4FB4AD),
        ),
        child: NavigationBar(
          backgroundColor: const Color(0xffA6DBDB),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
                label: ''),
            NavigationDestination(
                icon: Icon(
                  Icons.access_time,
                  color: Colors.white,
                ),
                label: ''),
            NavigationDestination(
                icon: Icon(
                  Icons.assignment,
                  color: Colors.white,
                ),
                label: ''),
            NavigationDestination(
                icon: Icon(
                  Icons.pending_actions,
                  color: Colors.white,
                ),
                label: ''),
            NavigationDestination(
                icon: Icon(
                  Icons.person_add_alt,
                  color: Colors.white,
                ),
                label: '')
          ],
        ),
      ),
      body: screens[index],
    );
  }
}
