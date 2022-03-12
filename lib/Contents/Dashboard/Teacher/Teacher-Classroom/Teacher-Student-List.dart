import 'package:blink/Contents/Functions/const.dart';
import 'package:flutter/material.dart';

import 'StudentCard.dart';

class TeacherStudentList extends StatelessWidget {
  const TeacherStudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: kTextFieldDecoration,
      child: Expanded(
        child: Column(children: <Widget>[
          const SizedBox(height: 30),
          Center(
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, bottom: 0, right: 15),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_rounded,
                        size: 35, color: Color(0xff34a3a3)),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                const Text(
                  'Students',
                  style: TextStyle(
                      color: Colors.black87,
                      // color: Color(0xff388A75),
                      fontFamily: 'Rockwell',
                      fontSize: 33,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: SizedBox(
              height: 650,
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overScroll) {
                  overScroll.disallowIndicator();
                  return true;
                },
                child: ListView(
                  children: const [
                    StudentListCard(
                      dept: 'Computer Science',
                      image: 'images/student-1.jpg',
                      name: 'Louis Barell',
                      rollNo: 'Roll no: 61',
                    ),
                    StudentListCard(
                      dept: 'Computer Science',
                      image: 'images/student-4.jpg',
                      name: 'Jane Lovey',
                      rollNo: 'Roll no: 62',
                    ),
                    StudentListCard(
                      dept: 'Computer Science',
                      image: 'images/student-5.jpg',
                      name: 'John Lind',
                      rollNo: 'Roll no: 63',
                    ),
                    StudentListCard(
                      dept: 'Computer Science',
                      image: 'images/student-3.jpg',
                      name: 'Amy Admas',
                      rollNo: 'Roll no: 64',
                    ),
                    StudentListCard(
                      dept: 'Computer Science',
                      image: 'images/student-2.jpg',
                      name: 'Jack Daniel',
                      rollNo: 'Roll no: 65',
                    ),
                    StudentListCard(
                      dept: 'Computer Science',
                      image: 'images/student-6.jpg',
                      name: 'Natasha',
                      rollNo: 'Roll no: 65',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
