import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final String text;
  final String image;

  final Function() onTap;

  const IconWidget({
    Key? key,
    required this.text,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 226, 214, 214),
            ),
            child: Center(
              child: Image.asset(
                image,
                height: 50,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: GestureDetector(
              onTap: onTap,
              child: Text(
                text,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
