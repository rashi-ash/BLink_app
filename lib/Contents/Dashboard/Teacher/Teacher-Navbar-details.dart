import 'package:blink/Contents/Functions/const.dart';
import 'package:blink/Contents/setting.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../teachers-profile-view.dart';
import 'TUser-get.dart';
import 'Teacher-MenuItem.dart';

class TNavBar extends StatefulWidget {
  const TNavBar({Key? key}) : super(key: key);

  @override
  _TNavBarState createState() => _TNavBarState();
}

class _TNavBarState extends State<TNavBar> {
  FirebaseAuth auth = FirebaseAuth.instance;
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: kTextFieldDecoration2,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: kTextFieldDecoration2,
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            fontFamily: 'Rockwell',
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 28, top: 0, right: 75, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              child: Image.asset('images/teacher-profile.png'),
                              radius: 40,
                            ),
                            const TUserGet(),
                          ],
                        ),
                      ),
                      Divider(
                        height: 33.5,
                        thickness: 0.5,
                        color: Colors.black.withOpacity(0.2),
                        indent: 32,
                        endIndent: 32,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const TeacherProfile())));
                        },
                        child: const MenuItem(
                          icon: Icons.person,
                          title: "Account",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const MenuItem(
                              icon: Icons.notifications_on_rounded,
                              title: "Notification",
                            ),
                            CupertinoSwitch(
                                //activeColor: const Color(0xffB4E9E2),
                                activeColor: const Color(0xffE1F7E6),
                                value: value,
                                onChanged: (value) =>
                                    setState(() => this.value = value))
                          ],
                        ),
                      ),
                      Divider(
                        height: 64,
                        thickness: 0.5,
                        color: Colors.black.withOpacity(0.3),
                        indent: 32,
                        endIndent: 32,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Settings())));
                        },
                        child: const MenuItem(
                          icon: Icons.settings_rounded,
                          title: "Settings",
                        ),
                      ),
                      TextButton(
                        onPressed: () => _signOut(),
                        child: const MenuItem(
                          icon: Icons.power_settings_new_rounded,
                          title: "Logout",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _signOut() async {
    await auth.signOut();
  }
}
