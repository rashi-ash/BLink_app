import 'dart:async';
import 'package:blink/Contents/Dashboard/Teacher/Teacher-Navbar-details.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';

class TeacherNavBar extends StatefulWidget {
  const TeacherNavBar({Key? key}) : super(key: key);

  @override
  _TeacherNavBarState createState() => _TeacherNavBarState();
}

class _TeacherNavBarState extends State<TeacherNavBar>
    with SingleTickerProviderStateMixin<TeacherNavBar> {
  late AnimationController _animationController;
  late final StreamController<bool> isSideBarOpenedStreamController;
  late Stream<bool> isSideBarOpenedStream;
  late StreamSink<bool> isSideBarOpenedSink;
  final _animeDure = const Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animeDure);
    isSideBarOpenedStreamController = PublishSubject<bool>();
    isSideBarOpenedStream = isSideBarOpenedStreamController.stream;
    isSideBarOpenedSink = isSideBarOpenedStreamController.sink;
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSideBarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSideBarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSideBarOpenedStreamController.close();
    isSideBarOpenedSink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
        initialData: false,
        stream: isSideBarOpenedStream,
        builder: (context, isSideBarOpenedAsync) {
          return AnimatedPositioned(
            top: 0,
            bottom: 0,
            left: isSideBarOpenedAsync.data! ? 0 : 0,
            right: isSideBarOpenedAsync.data! ? 0 : screenWidth - 65,
            duration: _animeDure,
            child: Row(
              children: [
                const Expanded(
                  child: TNavBar(),
                ),
                Align(
                  alignment: const Alignment(0, -0.93),
                  child: GestureDetector(
                    onTap: () {
                      onIconPressed();
                    },
                    child: ClipPath(
                      clipper: CustomMenuClipper(),
                      child: Container(
                        width: 65,
                        height: 110,
                        alignment: isSideBarOpenedAsync.data!
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        child: AnimatedIcon(
                          progress: _animationController.view,
                          icon: AnimatedIcons.menu_close,
                          color: const Color(0xff548B7D),
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
