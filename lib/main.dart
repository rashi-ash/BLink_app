import 'package:blink/Contents/functions/Homesceen.dart';
import 'package:blink/Contents/home.dart';
import 'package:blink/Contents/student.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:blink/Contents/Dashboard/Chat/chat.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, userSnapshot) {
          if (userSnapshot.hasData) {
            return const Landing();
            // return const Student1();
          }
          return const Landing();


        },
      ),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => landing(),
      //   '/student': (context) => const student1(),
      //   '/teacher': (context) => const teacher1(),
      //   '/parent': (context) => const parent1(),
      //   '/stud-login': (context) => const studlogin(),
      //   '/teach-login': (context) => const teachlogin(),
      //   '/par-login': (context) => const parlogin(),
      //   '/signup': (context) => const SignUp(),
      //   '/StudentProfile': (context) => const StudentProfile(),
      //   '/StudentProfileEdit': (context) => const StudentProfileEdit(),
      //   '/TeacherProfile': (context) => const TeacherProfile(),
      //   '/TeacherProfileEdit': (context) => const TeacherProfileEdit(),
      //   '/ParentProfile': (context) => const ParentProfile(),
      //   '/ParentProfileEdit': (context) => const ParentProfileEdit(),
      //   '/Settings': (context) => const Settings(),
      // }
    );
  }
}
