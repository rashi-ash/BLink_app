import 'package:blink/Contents/parent.dart';
import 'package:blink/Contents/student.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Dashboard/Student/StudentSideBarLayout.dart';
import '../Dashboard/Teacher/TeacherSideBarLayout.dart';
import '../teacher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  final _fireStore = FirebaseFirestore.instance;
  String userType="Type";
  _getUserType() async {
    final user = _auth.currentUser;
    if (user != null) {
      final dataP = await _fireStore.collection("parents").doc(user.uid).get();
      final dataT = await _fireStore.collection("Teachers").doc(user.uid).get();
      final dataS = await _fireStore.collection("students").doc(user.uid).get();
      if(dataP.data()==null && dataT.data()==null){
        setState(() {
          userType = dataS.data()?['UserType'];
        });
      }else if(dataT.data()==null && dataS.data()==null){
        setState(() {
          userType = dataP.data()?['UserType'];
        });
      }else{
        setState(() {
          userType = dataT.data()?['UserType'];
        });
      }

      switch (userType) {
        case 'Student':
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => const TeacherSBLayout())));
          break;
        case 'student':
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => const StudentSBLayout())));
          break;
        case 'Parent':
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => const Parent1())));
          break;
        case 'parent':
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => const Parent1())));
          break;
        case 'Teacher':
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => const TeacherSBLayout())));
          break;
        case 'teacher':
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => const TeacherSBLayout())));
          break;
      }
    }
  }

  @override
  void initState() {
    _getUserType();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
