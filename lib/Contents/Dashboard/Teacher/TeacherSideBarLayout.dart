import 'package:blink/Contents/Dashboard/Teacher/Teacher-NavBar.dart';
import 'package:blink/Contents/Dashboard/Teacher/Teacher-dashboard.dart';
import 'package:flutter/material.dart';

class TeacherSBLayout extends StatelessWidget {
  const TeacherSBLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        TeacherDashboard(),
        TeacherNavBar(),
      ],
    );
  }
}
