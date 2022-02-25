import 'package:blink/Contents/Dashboard/Student-dashboard.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'functions/const.dart';

class StudentProfile extends StatefulWidget {
  // final String nameHolder;
  // final String parentHolder;
  // final String deptHolder;
  // final String emailHolder;
  // final String yearHolder;
  // final String adHolder;

  const StudentProfile(
      {Key? key,
      // required this.nameHolder,
      // required this.parentHolder,
      // required this.deptHolder,
      // required this.emailHolder,
      // required this.yearHolder,
      // required this.adHolder
      })
      : super(key: key);

  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  String nameHolder="name";
  String parentHolder="name";
  String deptHolder="department";
  String emailHolder="email";
  String yearHolder="year";
  String adHolder="adno";
  final _auth=FirebaseAuth.instance;
  final _fireStore=FirebaseFirestore.instance;
  String? loggedUser;


  void getUserID()async{
    try{
      final users =await _auth.currentUser;
      if(users!=null){
        loggedUser=users.uid;
        print(loggedUser);
      }
    }
    catch(e){
      print(e);
    }
  }
  dynamic getDetails(String user)async{
    final detail=await _fireStore.collection("users").doc(user).get();

    print(detail);
    setState(() {
      nameHolder=detail.data()!['fullName'];
      parentHolder=detail.data()!['GuardianName'];
      deptHolder=detail.data()!['Department'];
      emailHolder=detail.data()!['email'];
      yearHolder=detail.data()!['Year'];
      adHolder=detail.data()!['AdmissionNumber'];

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserID();
    getDetails(loggedUser!);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: kTextFieldDecoration,
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
                      radius: 55,
                      child: Image.asset('images/student-profile.png'),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffFDF9F9).withOpacity(0.39),
                            borderRadius: BorderRadius.circular(30.0)),
                        height: 345,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 40, 40, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              profileview(text: nameHolder,),
                              profileview(text: parentHolder,),
                              profileview(text: emailHolder,),
                              profileview(text: deptHolder,),
                              profileview(text: yearHolder,),
                              profileview(text: adHolder,),

                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10, left: 25),
                            child: TextButton(
                              onPressed: () => goBack(context),
                              child: const Text(
                                ' Edit Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  textStyle: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w800)),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10, right: 15),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const StudentDashboard())));
                              },
                              child: const Icon(Icons.arrow_forward_rounded,
                                  size: 30, color: Colors.white),
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                          ),
                        ],
                      ),
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

  goBack(BuildContext context) {
    Navigator.pop(context);
  }
}

class profileview extends StatelessWidget {
  final String text;
  const profileview({
    Key? key,
    required this.text,
  }) : super(key: key);

  // final StudentProfile widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Text(
        text,
        style: const TextStyle(
            color: Color(0xff5a5959),
            // color: Color(0xff388A75),
            fontFamily: 'Rockwell',
            fontSize: 20,
            fontWeight: FontWeight.normal),
      ),
    );
  }
}
