import 'package:flutter/material.dart';

class AttendanceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final String day;
  final String time;
  const AttendanceCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.day,
      required this.date,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        child: Container(
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 12, left: 10, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 75,
                      height: 85,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 23,
                          ),
                          Text(
                            date,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Rockwell',
                            ),
                          ),
                          Text(
                            day,
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff716A6A),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontFamily: 'Rockwell',
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 17,
                            color: Color(0xff716A6A),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: SizedBox(
                      height: 50,
                      width: 30,
                      child: Column(
                        children: [
                          Text(
                            time,
                            style: const TextStyle(
                              fontSize: 17,
                              fontFamily: 'Rockwell',
                            ),
                          ),
                          const Divider(
                            height: 10,
                            thickness: 1.5,
                            color: Colors.black,
                          ),
                          const Text(
                            '22',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Rockwell',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
