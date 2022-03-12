import 'package:blink/Contents/Dashboard/Teacher/Teacher-Classroom/AttendanceChecklistCard.dart';
import 'package:blink/Contents/functions/const.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Teacher-Attendance.dart';

class TeacherAttendanceCreate extends StatefulWidget {
  const TeacherAttendanceCreate({Key? key}) : super(key: key);

  @override
  State<TeacherAttendanceCreate> createState() =>
      _TeacherAttendanceCreateState();
}

class _TeacherAttendanceCreateState extends State<TeacherAttendanceCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: kTextFieldDecoration,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const Center(
                  child: Text(
                    'Attendance',
                    style: TextStyle(
                        color: Colors.black87,
                        // color: Color(0xff388A75),
                        fontFamily: 'Rockwell',
                        fontSize: 33,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 30, bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          cursorColor: const Color(0xff46665E),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            hintStyle:
                                const TextStyle(color: Color(0xffABAAAA)),
                            hintText: 'Period',
                            fillColor: const Color(0xffFDF9F9).withOpacity(0.5),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Expanded(
                          child: TextFormField(
                            cursorColor: const Color(0xff46665E),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              hintStyle:
                                  const TextStyle(color: Color(0xffABAAAA)),
                              hintText: 'Date(Hint:08)',
                              fillColor:
                                  const Color(0xffFDF9F9).withOpacity(0.5),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 20, bottom: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFDF9F9).withOpacity(0.29),
                        borderRadius: BorderRadius.circular(30.0)),
                    height: 430,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 40, right: 40, bottom: 30),
                      child:
                          NotificationListener<OverscrollIndicatorNotification>(
                        onNotification: (overScroll) {
                          overScroll.disallowIndicator();
                          return true;
                        },
                        child: ListView(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Louis Barell', style: teacherattndnctxt),
                                TeacherAttendanceChechlistCard()
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.done,
                          size: 45, color: Color(0xff299A97)),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                    const SizedBox(
                      width: 30,
                    )
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
