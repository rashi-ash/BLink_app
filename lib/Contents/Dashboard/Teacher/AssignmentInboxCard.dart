import 'package:flutter/material.dart';

class AssignmentInboxCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final String time;
  final String pdf;
  const AssignmentInboxCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.pdf,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        child: Container(
          height: 140,
          width: 136,
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
                  SizedBox(
                    width: 0,
                  ),
                  Image.asset(
                    image,
                    height: 55,
                    width: 55,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
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
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffE1E1E1)),
                              borderRadius: BorderRadius.circular(35)),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 11,
                              ),
                              const Icon(
                                Icons.description_rounded,
                                color: Color(0xff8BBEB1),
                                size: 16.5,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                pdf,
                                style: const TextStyle(
                                    color: Color(0xff8BBEB1),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      color: Color(0xff716A6A),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
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
