import 'package:flutter/material.dart';

import '../../teachers-profile-view.dart';
import 'Teacher-Class-Container.dart';

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

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
                        image: 'images/CS-Sem1.png',
                        title: '1st Semester',
                        nextpage: TeacherProfile(),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      ClassContainer(
                        image: 'images/CS-Sem2.png',
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
                        image: 'images/CS-Sem3.png',
                        title: '3rd Semester',
                        nextpage: TeacherProfile(),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      ClassContainer(
                        image: 'images/CS-Sem4.png',
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
                        image: 'images/CS-Sem5.png',
                        title: '5th Semester',
                        nextpage: TeacherProfile(),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      ClassContainer(
                        image: 'images/CS-Sem6.png',
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
