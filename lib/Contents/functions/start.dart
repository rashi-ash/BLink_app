import 'package:flutter/material.dart';
import 'package:blink/Contents/functions/const.dart';

class Start extends StatelessWidget {
  final String title;
  final String quote1;
  final String quote2;
  final String quote3;
  final String img;
  final Widget nav;

  const Start({
    Key? key,
    required this.title,
    required this.quote1,
    required this.quote2,
    required this.quote3,
    required this.img,
    required this.nav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xffABAAAA),
                  // color: Color(0xff388A75),
                  fontFamily: 'Roboto',
                  fontSize: 20),
            ),
            const SizedBox(
              width: 40,
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                quote1,
                style:kTextStyle
            ),
            Text(
                quote2,
                style:kTextStyle
            ),
            Text(
                quote3,
                style:kTextStyle
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              img,
              height: 290,
              width: 310,
              fit: BoxFit.fill,
            ),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: TextButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, '/StudentLogin');
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => nav)));
                  },
                  child: const Padding(
                    padding:
                    EdgeInsets.only(left: 7, right: 7, bottom: 6, top: 6),
                    child: Icon(Icons.arrow_forward_ios_rounded,
                        size: 30, color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: const Color(0xff050D28),
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w800)),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
