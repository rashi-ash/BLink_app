import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffF9FFED), Color(0xffA4DADA)]),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 6, bottom: 15, right: 15),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/student-profile');
                            },
                            child: const Icon(Icons.arrow_back_rounded,
                                size: 35, color: Color(0xff34a3a3)),
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Center(
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            color: Colors.black87,
                            // color: Color(0xff388A75),
                            fontFamily: 'Rockwell',
                            fontSize: 33,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 65),
                          child: Text(
                            'Profile',
                            style: TextStyle(
                                color: Colors.black87,
                                // color: Color(0xff388A75),
                                fontFamily: 'Rockwell',
                                fontSize: 22,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              width: 0,
                            ),
                            const CircleAvatar(
                              radius: 40,
                            ),
                            const Text(
                              'Full Name',
                              style: TextStyle(
                                  color: Colors.black87,
                                  // color: Color(0xff388A75),
                                  fontFamily: 'Rockwell',
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/student-profile');
                                },
                                child: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 30,
                                    color: Colors.white),
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 45 ,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 65),
                          child: Text(
                            'Options',
                            style: TextStyle(
                                color: Colors.black87,
                                // color: Color(0xff388A75),
                                fontFamily: 'Rockwell',
                                fontSize: 22,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 1, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                width: 0,
                              ),
                              const Icon(Icons.privacy_tip_rounded,
                                  size: 30, color: Colors.white),
                              const Text(
                                'Privacy      ',
                                style: TextStyle(
                                    color: Colors.black87,
                                    // color: Color(0xff388A75),
                                    fontFamily: 'Rockwell',
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/student-profile');
                                },
                                child: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 30,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 1, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                width: 0,
                              ),
                              const Icon(Icons.power_settings_new_rounded,
                                  size: 30, color: Colors.white),
                              const Text(
                                'Logout       ',
                                style: TextStyle(
                                    color: Colors.black87,
                                    // color: Color(0xff388A75),
                                    fontFamily: 'Rockwell',
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/student-profile');
                                },
                                child: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 30,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 1, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                width: 0,
                              ),
                              const Icon(Icons.lock_open_rounded,
                                  size: 30, color: Colors.white),
                              const Text(
                                'Forgot Password   ',
                                style: TextStyle(
                                    color: Colors.black87,
                                    // color: Color(0xff388A75),
                                    fontFamily: 'Rockwell',
                                    fontSize: 17.5,
                                    fontWeight: FontWeight.normal),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/student-profile');
                                },
                                child: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 30,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 1, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                width: 0,
                              ),
                              const Icon(Icons.report_gmailerrorred_rounded,
                                  size: 30, color: Colors.white),
                              const Text(
                                'About Us               ',
                                style: TextStyle(
                                    color: Colors.black87,
                                    // color: Color(0xff388A75),
                                    fontFamily: 'Rockwell',
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal),
                              ),
                              TextButton(
                                onPressed: () {
                                  //Navigator.pushNamed(context, '/student-profile');
                                },
                                child: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 30,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
