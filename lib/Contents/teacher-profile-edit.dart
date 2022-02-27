import 'package:blink/Contents/teachers-profile-view.dart';
import 'package:flutter/material.dart';
import 'package:blink/Contents/functions/sform.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class TeacherProfileEdit extends StatefulWidget {
  const TeacherProfileEdit({Key? key}) : super(key: key);

  @override
  _TeacherProfileEditState createState() => _TeacherProfileEditState();
}

class _TeacherProfileEditState extends State<TeacherProfileEdit> {
  final _auth = FirebaseAuth.instance;
  final _fireStore = FirebaseFirestore.instance;
  String? loggedUser;

  final name = TextEditingController();
  final emails = TextEditingController();
  final subject = TextEditingController();
  final mobile = TextEditingController();
  final altMobile = TextEditingController();
  final dept = TextEditingController();
  getItemAndNavigate(BuildContext context) {
    try {
      final details = _fireStore.collection("users").doc(loggedUser).update({
        "Department": dept.text,
        "Subject": subject.text,
        "AlternateMobileNumber": altMobile.text,
      });

      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => TeacherProfile())));
    } catch (e) {
      print(e);
    }
  }
  void getUserID() async {
    try {
      final users = await _auth.currentUser;
      if (users != null) {
        loggedUser = users.uid;
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserID();
  }

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
                          top: 50, bottom: 10, left: 50, right: 50),
                      child: Formfield(
                          controllers: name,
                          hintText: "full name",
                          type: TextInputType.name),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 5, left: 50, right: 50),
                      child: Formfield(
                        controllers: emails,
                        hintText: "Email",
                        type: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 50, right: 50, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Formfield(
                              controllers: dept,
                              hintText: "Department",
                              type: TextInputType.name,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Formfield(
                                controllers: subject,
                                hintText: "Subject",
                                type: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 50, right: 50),
                      child: Formfield(
                        controllers: mobile,
                        hintText: "mobile number",
                        type: TextInputType.number,
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 50, right: 50),
                      child: Formfield(
                        controllers: altMobile,
                        hintText: "Alternate mobile number",
                        type: TextInputType.number,
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
                              //Navigator.pushNamed(context, '/TeacherProfile');
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: ((context) => const TeacherProfile())
                              //     ));
                              getItemAndNavigate(context);
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
