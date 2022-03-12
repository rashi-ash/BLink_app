import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const MenuItem({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                //color: Colors.white,
                color: const Color(0xff548B7D),
                size: 25,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
