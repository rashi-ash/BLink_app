import 'package:blink/Contents/Dashboard/Student-NavBar.dart';
import 'package:flutter/material.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({Key? key}) : super(key: key);

  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const StudentNavBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF9FFED),
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Color(0xff9DC8C8)),
        ),
        iconTheme: const IconThemeData(color: Color(0xffA4DADA)),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffF9FFED), Color(0xffA4DADA)]),
          ),
        ),
      ),
    );
  }
}
