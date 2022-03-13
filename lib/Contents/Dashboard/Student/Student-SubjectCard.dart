import 'package:flutter/material.dart';

class StudentSubjectCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String teacher;
  final String image;
  final String time;
  const StudentSubjectCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.teacher,
      required this.image,
      required this.time})
      : super(key: key);

  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        child: Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    image,
                    height: 50,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 6),
                    child: Center(
                      child: Text(
                        teacher,
                        style: const TextStyle(
                          fontSize: 17,
                          fontFamily: 'Rockwell',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'Rockwell',
                        fontSize: 22,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 18),
                      child: Text(
                        subtitle,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          letterSpacing: 1.3,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff716A6A),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 17,
                        //fontFamily: 'Poppins',
                        color: Color(0xff716A6A),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
