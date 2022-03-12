import 'package:blink/Contents/Dashboard/NoticeCard.dart';
import 'package:blink/Contents/Functions/const.dart';
import 'package:flutter/material.dart';

class TeacherNotice extends StatefulWidget {
  const TeacherNotice({Key? key}) : super(key: key);

  @override
  State<TeacherNotice> createState() => _TeacherNoticeState();
}

class _TeacherNoticeState extends State<TeacherNotice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: kTextFieldDecoration,
        child: Expanded(
          child: Column(
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
                      'Notice Board',
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
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overScroll) {
                    overScroll.disallowIndicator();
                    return true;
                  },
                  child: Container(
                    height: 650,
                    child: ListView(
                      children: const [
                        NoticeCard(
                            title: 'Internal Exam',
                            subtitle: 'Tomorrow',
                            teacher: 'Ashley Ind',
                            sub: 'Unit 1',
                            image: 'images/teachers-pic-1.png',
                            time: '09:20 AM'),
                        NoticeCard(
                            title: 'Technical Writing',
                            subtitle: 'Notes',
                            teacher: 'Jacob Wild',
                            sub: 'Unit 4',
                            image: 'images/teachers-pic-2.png',
                            time: '10:15 PM'),
                        NoticeCard(
                            title: 'Internal Marks',
                            subtitle: 'Finslized',
                            teacher: 'Jonathan Eric',
                            sub: 'Unit 2',
                            image: 'images/teachers-pic-3.png',
                            time: '12:35 AM'),
                        NoticeCard(
                            title: 'Internal Exam',
                            subtitle: 'Thursday',
                            teacher: 'David Williams',
                            sub: 'Unit 5',
                            image: 'images/teachers-pic-4.png',
                            time: '10:35 PM'),
                        NoticeCard(
                            title: 'Unit Test',
                            subtitle: 'Monday',
                            teacher: 'Olivia Victim',
                            sub: 'Unit 3',
                            image: 'images/teachers-pic-5.png',
                            time: '08:00 PM')
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
