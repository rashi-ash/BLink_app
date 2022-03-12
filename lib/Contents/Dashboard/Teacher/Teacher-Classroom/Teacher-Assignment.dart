import 'package:blink/Contents/Dashboard/Teacher/AssignmentCard.dart';
import 'package:blink/Contents/Dashboard/Teacher/AssignmentInboxCard.dart';
import 'package:blink/Contents/Functions/const.dart';
import 'package:flutter/material.dart';

class TeacherAssignments extends StatefulWidget {
  const TeacherAssignments({Key? key}) : super(key: key);

  @override
  State<TeacherAssignments> createState() => _TeacherAssignmentsState();
}

class _TeacherAssignmentsState extends State<TeacherAssignments> {
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
              const SizedBox(height: 30),
              Center(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 6, bottom: 0, right: 0),
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
                      width: 30,
                    ),
                    const Text(
                      'Assignments',
                      style: TextStyle(
                          color: Colors.black87,
                          // color: Color(0xff388A75),
                          fontFamily: 'Rockwell',
                          fontSize: 33,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        //Navigator.pushNamed(context, '/StudentLogin');
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: ((context) => nav)));
                      },
                      child:
                          Icon(Icons.add, size: 45, color: Color(0xff299A97)),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800)),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overScroll) {
                    overScroll.disallowIndicator();
                    return true;
                  },
                  child: Container(
                    height: 190,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        TeacherAssignmentCard(
                            title: 'Resume',
                            subtitle: 'Submission',
                            date: '23/02/2022',
                            index: '1'),
                        TeacherAssignmentCard(
                            title: 'Seminar',
                            subtitle: 'Report',
                            date: '24/02/2022',
                            index: '2'),
                        TeacherAssignmentCard(
                            title: 'Notice',
                            subtitle: 'Creation',
                            date: '01/03/2022',
                            index: '3'),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: const [
                    Text(
                      'Inbox',
                      style: TextStyle(
                        fontFamily: 'Rockwell',
                        fontSize: 23,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 9, bottom: 10),
                child: SizedBox(
                  height: 380,
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (overScroll) {
                      overScroll.disallowIndicator();
                      return true;
                    },
                    child: ListView(
                      children: const [
                        AssignmentInboxCard(
                          title: 'Jane Lovey',
                          subtitle: 'Submitted',
                          image: 'images/circle-pic-1.png',
                          time: '09:20 AM',
                          pdf: 'note.pdf',
                        ),
                        AssignmentInboxCard(
                          title: 'Lawrence',
                          subtitle: 'Submitted',
                          image: 'images/circle-pic-5.png',
                          time: '08:40 AM',
                          pdf: 'laws3.pdf',
                        ),
                        AssignmentInboxCard(
                          title: 'Jack Scott',
                          subtitle: 'Submitted',
                          image: 'images/circle-pic-3.png',
                          time: '10:00 PM',
                          pdf: 'notes.pdf',
                        ),
                        AssignmentInboxCard(
                          title: 'Emma Jones',
                          subtitle: 'Submitted',
                          image: 'images/circle-pic-4.png',
                          time: '09:20 AM',
                          pdf: 'notes1.pdf',
                        ),
                        AssignmentInboxCard(
                          title: 'Amy Adams',
                          subtitle: 'Submitted',
                          image: 'images/circle-pic-2.png',
                          time: '08:35 AM',
                          pdf: 'amy.pdf',
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
