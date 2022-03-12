import 'package:flutter/material.dart';

class NoticeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String teacher;
  final String sub;
  final String image;
  final String time;
  const NoticeCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.teacher,
      required this.sub,
      required this.image,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        child: Container(
          height: 180,
          width: 136,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
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
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      color: Color(0xff716A6A),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                height: 0,
                thickness: 1.1,
                color: Color(0xff4D907F),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                      width: 70,
                    ),
                    Text(
                      sub,
                      style: const TextStyle(
                        fontSize: 17,
                        fontFamily: 'Poppins',
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
