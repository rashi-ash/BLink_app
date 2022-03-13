import 'package:blink/Contents/Dashboard/Teacher/Teacher-Classroom/AttendenceCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TeacherAttendanceTabs extends StatefulWidget {
  const TeacherAttendanceTabs({Key? key}) : super(key: key);

  @override
  State<TeacherAttendanceTabs> createState() => _TeacherAttendanceTabsState();
}

class _TeacherAttendanceTabsState extends State<TeacherAttendanceTabs> {
  List<Map<String, dynamic>> addentanceDB = [];
  bool _loading = false;

  _getAllAttendances() async {
    setState(() {
      _loading = true;
    });
    var temp = await FirebaseFirestore.instance.collection('Attendance').get();
    List<Map<String, dynamic>> list = [];
    list = temp.docs.map((e) {
      return e.data();
    }).toList();
    setState(() {
      addentanceDB = list;
      _loading = false;
    });
  }

  @override
  void initState() {
    _getAllAttendances();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return true;
        },
        child: ListView.builder(
          itemCount: addentanceDB.length,
          itemBuilder: (context, index) {
            return AttendanceCard(
              title: addentanceDB[index]['period'].toString(),
              subtitle: addentanceDB[index]['time'].toString(),
              date: addentanceDB[index]['date'].toString(),
              attendees: addentanceDB[index]['present'].toString(),
              day: addentanceDB[index]['day'].toString(),
              totalStudents: addentanceDB[index]['total'].toString(),
            );
          },
        ),

      ),
    );
  }
}