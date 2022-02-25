import 'package:flutter/material.dart';
class Formfield extends StatelessWidget {

  const Formfield({
    Key? key,
    required this.controllers,
    required this.hintText,
    required this.type,

  }) : super(key: key);

  final TextEditingController controllers;
  final String hintText;
  final TextInputType type;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xff46665E),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 30, vertical: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        hintStyle: const TextStyle(color: Color(0xffABAAAA)),
        hintText: hintText,
        fillColor: const Color(0xffFDF9F9).withOpacity(0.39),
      ),
      controller: controllers,
      keyboardType:type,
    );
  }
}
