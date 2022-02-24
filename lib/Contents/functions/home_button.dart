import 'package:flutter/material.dart';

class home_button extends StatelessWidget {
  final String path1;
  final Widget path2;
  const home_button({
    Key? key,required this.path1,required this.path2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: TextButton(
        onPressed: () {
          //Navigator.pushNamed(context, '/student');
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) =>  path2)));
        },
        child:  Padding(
          padding:const EdgeInsets.only(
              left: 49, right: 49, bottom: 4, top: 4),
          child: Text(
            path1,
            style:const TextStyle(
              color: Color(0xff546E7A),
              fontFamily: 'Roboto',
            ),
          ),
        ),
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)),
            backgroundColor: Colors.white.withOpacity(.45),
            textStyle: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w800)),
      ),
    );
  }
}
