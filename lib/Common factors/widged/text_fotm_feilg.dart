import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class textformfeild extends StatelessWidget {
  final String labelText;
  const textformfeild({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          labelText: labelText,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
