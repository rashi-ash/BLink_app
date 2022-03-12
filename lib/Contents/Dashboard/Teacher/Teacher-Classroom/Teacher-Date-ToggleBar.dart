import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'TeacherAttenceTabs.dart';

// import 'Teacher-Tab1.dart';
// import 'Teacher-Tab2.dart';

class AttendanceToggleBar extends StatefulWidget {
  const AttendanceToggleBar({Key? key}) : super(key: key);

  @override
  _AttendanceToggleBarState createState() => _AttendanceToggleBarState();
}

class _AttendanceToggleBarState extends State<AttendanceToggleBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 10, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: 650,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            const SizedBox(height: 5),
            Container(
              // height: 50,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffE8F8E9), Color(0xffE2F5E8)]),
                  borderRadius: BorderRadius.circular(35)),
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overScroll) {
                  overScroll.disallowIndicator();
                  return true;
                },
                child: TabBar(
                  unselectedLabelColor: const Color(0xff4BA0A0),
                  isScrollable: true,
                  labelColor: Colors.white,
                  labelStyle: const TextStyle(
                      fontFamily: 'Rockwell',
                      fontSize: 14.5,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w600),
                  indicatorColor: Colors.white,
                  indicatorWeight: 2,
                  indicator: BoxDecoration(
                    color: const Color(0xff4FB4AD),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  controller: tabController,
                  tabs: const [
                    Tab(
                      text: 'Mar',
                    ),
                    Tab(
                      text: 'Jun',
                    ),
                    Tab(
                      text: 'Jul',
                    ),
                    Tab(
                      text: 'Aug',
                    ),
                    Tab(
                      text: 'Sep',
                    ),
                    Tab(
                      text: "Oct",
                    ),
                    Tab(
                      text: 'Nov',
                    ),
                    Tab(
                      text: 'Dec',
                    ),
                    Tab(
                      text: 'Jan',
                    ),
                    Tab(
                      text: 'Feb',
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  TeacherAttendanceTabs(),
                  TeacherAttendanceTabs(),
                  TeacherAttendanceTabs(),
                  TeacherAttendanceTabs(),
                  TeacherAttendanceTabs(),
                  TeacherAttendanceTabs(),
                  TeacherAttendanceTabs(),
                  TeacherAttendanceTabs(),
                  TeacherAttendanceTabs(),
                  TeacherAttendanceTabs(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
