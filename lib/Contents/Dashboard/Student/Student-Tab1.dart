import 'package:blink/Contents/Dashboard/Student/Student-SubjectCard.dart';
import 'package:blink/Contents/Dashboard/Teacher/Teacher-Class-Container.dart';
import 'package:blink/Contents/Dashboard/Teacher/Teacher-Classroom/Teacher-Classroom-Main.dart';
import 'package:flutter/material.dart';

import '../../teachers-profile-view.dart';

class StudentTab1 extends StatelessWidget {
  const StudentTab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Column(
      children: [
        SizedBox(
          height: 410,
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overScroll) {
              overScroll.disallowIndicator();
              return true;
            },
            child: ListView(
              children: [
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: StudentSubjectCard(
                        image: 'images/teachers-pic-2.png',
                        subtitle:
                            'Internal Exam will be held on unit 4 tomorrow at 2pm ',
                        teacher: 'Ashley Ind',
                        time: '09:20 AM',
                        title: 'Internal Exam',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 10),
                      child: StudentSubjectCard(
                        image: 'images/teachers-pic-2.png',
                        subtitle:
                            'Internal Exam will be held on unit 4 tomorrow at 2pm ',
                        teacher: 'Ashley Ind',
                        time: '09:20 AM',
                        title: 'Internal Exam',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 10),
                      child: StudentSubjectCard(
                        image: 'images/teachers-pic-2.png',
                        subtitle:
                            'Internal Exam will be held on unit 4 tomorrow at 2pm ',
                        teacher: 'Ashley Ind',
                        time: '09:20 AM',
                        title: 'Internal Exam',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 160,
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(Icons.assignment, size: 35, color: Color(0xff299A97)),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Assignment',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rockwell',
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            style: TextButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(0.67),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)),
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
          ),
        )
      ],
    );
  }
}
