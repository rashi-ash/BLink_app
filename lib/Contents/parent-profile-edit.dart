import 'package:blink/Contents/parent-profile-view.dart';
import 'package:flutter/material.dart';

class ParentProfileEdit extends StatefulWidget {
  const ParentProfileEdit({Key? key}) : super(key: key);

  @override
  _ParentProfileEditState createState() => _ParentProfileEditState();
}

class _ParentProfileEditState extends State<ParentProfileEdit> {
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
                child: ListView(
                  children: [

                    const SizedBox(
                      height: 49,
                    ),
                    const Center(
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.black87,
                            // color: Color(0xff388A75),
                            fontFamily: 'Rockwell',
                            fontSize: 30,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: const Color(0xffFDF9F9).withOpacity(0.99),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 45, bottom: 5, left: 50, right: 50),
                      child: TextField(
                        cursorColor: const Color(0xff46665E),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          hintStyle:
                          const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Full Name",
                          fillColor:
                          const Color(0xffFDF9F9).withOpacity(0.39),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5,  left: 50, right: 50),
                      child: TextField(
                        cursorColor: const Color(0xff46665E),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          hintStyle:
                          const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Occupation",
                          fillColor:
                          const Color(0xffFDF9F9).withOpacity(0.38),
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              cursorColor: const Color(0xff46665E),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                const TextStyle(color: Color(0xffABAAAA)),
                                hintText: "Father",
                                fillColor:
                                const Color(0xffFDF9F9).withOpacity(0.39),
                              ),
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                cursorColor: const Color(0xff46665E),

                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: const BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  hintStyle:
                                  const TextStyle(color: Color(0xffABAAAA)),
                                  hintText: "Mother",
                                  fillColor:
                                  const Color(0xffFDF9F9).withOpacity(0.39),
                                ),
                                keyboardType: TextInputType.name,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 50, right: 50),
                      child: TextField(
                        cursorColor: const Color(0xff46665E),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          hintStyle:
                          const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Mobile Number",
                          fillColor:
                          const Color(0xffFDF9F9).withOpacity(0.39),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, left: 50, right: 50),
                      child: TextField(
                        cursorColor: const Color(0xff46665E),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          hintStyle:
                          const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Alternative Mobile number",
                          fillColor:
                          const Color(0xffFDF9F9).withOpacity(0.35),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, bottom: 25, right: 15),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                              MaterialPageRoute(
                                  builder: ((context) => const ParentProfile())
                              ));
                            },
                            child: const Icon(Icons.arrow_forward_rounded,
                                size: 30, color: Colors.white),
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(15)),
                            ),
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
