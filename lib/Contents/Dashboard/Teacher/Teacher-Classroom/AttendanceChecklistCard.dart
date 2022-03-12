import 'package:flutter/material.dart';

class TeacherAttendanceChechlistCard extends StatefulWidget {
  const TeacherAttendanceChechlistCard({Key? key}) : super(key: key);
  @override
  State<TeacherAttendanceChechlistCard> createState() =>
      _TeacherAttendanceChechlistCardState();
}

int attends = 0;

class _TeacherAttendanceChechlistCardState
    extends State<TeacherAttendanceChechlistCard> {
  bool _checkbox = false;

  void add() {
    if (_checkbox == true) {
      attends = attends + 1;
      print(attends);
    } else {
      attends = attends - 1;
      print(attends);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Checkbox(
        focusColor: const Color(0xff4FB4AD),
        activeColor: const Color(0xff4FB4AD),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        value: _checkbox,
        onChanged: (value) {
          setState(() {
            _checkbox = !_checkbox;
            add();
          });
        },
      ),
    );
  }
}
