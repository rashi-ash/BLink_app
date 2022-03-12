import 'package:flutter/material.dart';

class StudentListCard extends StatelessWidget {
  final String name;
  final String rollNo;
  final String dept;
  final String image;
  const StudentListCard(
      {Key? key,
      required this.name,
      required this.rollNo,
      required this.dept,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        child: Container(
          height: 160,
          width: 136,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    image,
                    height: 102,
                    width: 106,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontFamily: 'Rockwell',
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        rollNo,
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
                  TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xffCDC2C2),
                      ))
                ],
              ),
              const Divider(
                height: 0,
                thickness: 1.1,
                color: Color(0xff4D907F),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    dept,
                    style: const TextStyle(
                      fontSize: 17,
                      fontFamily: 'Rockwell',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
