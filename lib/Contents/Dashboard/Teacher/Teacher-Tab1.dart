import 'package:blink/Contents/Dashboard/Teacher/Teacher-Class-Container.dart';
import 'package:blink/Contents/Dashboard/Teacher/Teacher-Classroom/Teacher-Classroom-Main.dart';
import 'package:flutter/material.dart';

import '../../teachers-profile-view.dart';

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return true;
        },
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 35, bottom: 20),
                  child: Row(
                    children: const [
                      ClassContainer(
                        image: 'images/Sem-1.png',
                        title: '1st Semester',
                        nextpage: TeacherClassroomMain(),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      ClassContainer(
                        image: 'images/Sem-2.png',
                        title: '2nd Semester',
                        nextpage: TeacherProfile(),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: Row(
                    children: const [
                      ClassContainer(
                        image: 'images/Sem-3.png',
                        title: '3rd Semester',
                        nextpage: TeacherProfile(),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      ClassContainer(
                        image: 'images/Sem-4.png',
                        title: '4th Semester',
                        nextpage: TeacherProfile(),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 40),
                  child: Row(
                    children: const [
                      ClassContainer(
                        image: 'images/Sem-5.png',
                        title: '5th Semester',
                        nextpage: TeacherProfile(),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      ClassContainer(
                        image: 'images/Sem-6.png',
                        title: '6th Semester',
                        nextpage: TeacherProfile(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
