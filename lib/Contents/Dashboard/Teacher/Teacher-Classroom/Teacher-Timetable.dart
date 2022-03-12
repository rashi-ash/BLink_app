import 'package:blink/Contents/Dashboard/Teacher/Teacher-Classroom/Timeline.dart';
import 'package:flutter/material.dart';

class TeacherTimeTable extends StatefulWidget {
  const TeacherTimeTable({Key? key}) : super(key: key);

  @override
  State<TeacherTimeTable> createState() => _TeacherTimeTableState();
}

class _TeacherTimeTableState extends State<TeacherTimeTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: const [
            Expanded(
              child: Timeline(),
            )
          ],
        ),
      )),
    );
  }
}
