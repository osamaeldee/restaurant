import 'package:flutter/material.dart';
import 'package:flutter_corse/Common%20factors/widged/colors.dart';

class Search extends StatelessWidget {
  final IconData icon;
  final String text;
  final IconData icon2;
  const Search(
      {Key? key, required this.icon, required this.text, required this.icon2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(icon),
                hintText: 'search',
                border: InputBorder.none,
                fillColor: Color_color8,
                filled: true,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(icon2),
        )
      ],
    );
  }
}
