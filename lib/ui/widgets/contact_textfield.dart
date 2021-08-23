import 'package:flutter/material.dart';

class ContactTextField extends StatelessWidget {
  const ContactTextField({
    required this.controller,
    this.maxLines,
  });

  final TextEditingController controller;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      minLines: maxLines,
      maxLines: maxLines,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: "Body",
        contentPadding: EdgeInsets.all(20.0),
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.75),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.75),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          borderSide: BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
