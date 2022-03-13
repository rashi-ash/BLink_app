import 'package:flutter/material.dart';

class StudentTab2 extends StatelessWidget {
  const StudentTab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 410,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 160,
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(Icons.assignment, size: 35, color: Color(0xff299A97)),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Assignment',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Rockwell',
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            style: TextButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(0.7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
          ),
        )
      ],
    );
  }
}
