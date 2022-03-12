import 'package:blink/Contents/Functions/const.dart';
import 'package:flutter/material.dart';

import '../../Chat/chat.dart';
import 'StudentCard.dart';
import 'package:blink/Contents/Dashboard/Teacher/Teacher-Student-Details-Page.dart';

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
                      path: TeacherStudentDetailsPage(
                        name: 'Luois Barell',
                        adno: '9748',
                        dep: 'Computer Science',
                        mail: 'loui@gmail.com',
                        parent: 'Marcues',
                        pmail: 'marcues01@gmai.com',
                        pno: '97184523985',
                        yr: '3',
                      ),
                    ),
                    StudentListCard(

                      dept: 'Computer Science',
                      image: 'images/student-4.jpg',
                      name: 'Jane Lovey',
                      rollNo: 'Roll no: 62',
                      path: TeacherStudentDetailsPage(
                        name: 'Jane Lovey',
                        adno: '9749',
                        dep: 'Computer Science',
                        mail: 'jane@gmail.com',
                        parent: 'Luois',
                        pmail: 'Luois@gmail.com',
                        pno: '8754632148',
                        yr: '3',
                      ),
                    ),
                    StudentListCard(

                      dept: 'Computer Science',
                      image: 'images/student-5.jpg',
                      name: 'John Lind',
                      rollNo: 'Roll no: 63',
                      path: TeacherStudentDetailsPage(
                        name: 'Luois Barell',
                        adno: 'Luois',
                        dep: 'Luois',
                        mail: 'Luois',
                        parent: 'Luois',
                        pmail: 'Luois',
                        pno: 'Luois',
                        yr: 'Luois',
                      ),
                    ),
                    StudentListCard(
                      dept: 'Computer Science',
                      image: 'images/student-3.jpg',
                      name: 'Amy Admas',
                      rollNo: 'Roll no: 64',
                      path: TeacherStudentDetailsPage(
                        name: 'Luois Barell',
                        adno: 'Luois',
                        dep: 'Luois',
                        mail: 'Luois',
                        parent: 'Luois',
                        pmail: 'Luois',
                        pno: 'Luois',
                        yr: 'Luois',
                      ),
                    ),
                    StudentListCard(
                      dept: 'Computer Science',
                      image: 'images/student-2.jpg',
                      name: 'Jack Daniel',
                      rollNo: 'Roll no: 65',
                      path: TeacherStudentDetailsPage(
                        name: 'Luois Barell',
                        adno: 'Luois',
                        dep: 'Luois',
                        mail: 'Luois',
                        parent: 'Luois',
                        pmail: 'Luois',
                        pno: 'Luois',
                        yr: 'Luois',
                      ),
                    ),
                    StudentListCard(
                      dept: 'Computer Science',
                      image: 'images/student-6.jpg',
                      name: 'Natasha',
                      rollNo: 'Roll no: 65',
                      path: TeacherStudentDetailsPage(
                        name: 'Luois Barell',
                        adno: 'Luois',
                        dep: 'Luois',
                        mail: 'Luois',
                        parent: 'Luois',
                        pmail: 'Luois',
                        pno: 'Luois',
                        yr: 'Luois',
                      ),
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
