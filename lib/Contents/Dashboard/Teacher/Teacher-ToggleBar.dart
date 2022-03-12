import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'Teacher-Tab1.dart';
import 'Teacher-Tab2.dart';

class TeacgerToggleBar extends StatefulWidget {
  const TeacgerToggleBar({Key? key}) : super(key: key);

  @override
  _TeacgerToggleBarState createState() => _TeacgerToggleBarState();
}

class _TeacgerToggleBarState extends State<TeacgerToggleBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
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
      height: 590,
      child: Column(
        children: [
          const SizedBox(height: 30),
          Container(
            // height: 50,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffE8F8E9), Color(0xffE2F5E8)]),
                borderRadius: BorderRadius.circular(35)),
            child: Column(
              children: [
                TabBar(
                  unselectedLabelColor: const Color(0xff4BA0A0),
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
                      text: 'Mathematics',
                    ),
                    Tab(
                      text: 'Computer Science',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                Tab1(),
                Tab2(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// ToggleSwitch(
//       minWidth: 175.0,
//       minHeight: 50,
//       cornerRadius: 40.0,
//       activeBgColors: const [
//         [Color(0xff4FB4AD)],
//         [Color(0xff4FB4AD)]
//       ],
//       activeFgColor: Colors.white,
//       inactiveBgColor: const Color(0xffD8F0E5),
//       inactiveFgColor: const Color(0xff4BA0A0),
//       initialLabelIndex: 1,
//       totalSwitches: 2,
//       labels: labels,
//       fontSize: 18.5,
//       radiusStyle: true,
//       onToggle: (index) {
//         // print('switched to: $index');
//       },
//     );


// Container(
//       height: MediaQuery.of(context).size.height,
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           Container(
//             width: MediaQuery.of(context).size.height,
//             decoration: BoxDecoration(
//               gradient: const LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [Color(0xffE8F8E9), Color(0xffE2F5E8)]),
//               borderRadius: BorderRadius.circular(35),
//             ),
//             child: Column(
//               children: [
//                 TabBar(
//                   unselectedLabelColor: const Color(0xff4BA0A0),
//                   labelColor: Colors.white,
//                   labelStyle: const TextStyle(
//                       fontFamily: 'Rockwell',
//                       fontSize: 14.2,
//                       letterSpacing: 1.3,
//                       fontWeight: FontWeight.w600),
//                   indicatorWeight: 2,
//                   indicator: BoxDecoration(
//                     color: const Color(0xff4FB4AD),
//                     borderRadius: BorderRadius.circular(35),
//                   ),
//                   controller: tabController,
//                   tabs: const [
//                     Tab(
//                       text: 'Mathematics',
//                     ),
//                     Tab(
//                       text: 'Computer Science',
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//               child: ListView(
//             children: [
//               TabBarView(
//                 controller: tabController,
//                  children: const [
//                 Tab1(),
//                 Tab2(),
//               ]),
//             ],
//           ))
//         ],
//       ),
//     );