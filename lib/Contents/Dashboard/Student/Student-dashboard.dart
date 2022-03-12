import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../student-profile-view.dart';

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
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffF9FFED), Color(0xffA4DADA)])),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25, right: 15),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const StudentProfile(),
                  ),
                );
              },
              child: const Icon(Icons.arrow_forward_rounded,
                  size: 30, color: Colors.white),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
