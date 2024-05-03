import 'package:flutter/material.dart';
import 'package:flutter_corse/Common%20factors/widged/colors.dart';
import 'package:flutter_corse/Create%20an%20account/Log_in.dart';
import 'package:flutter_corse/Create%20an%20account/Sing_up.dart';

class Face_login extends StatefulWidget {
  @override
  State<Face_login> createState() => _Face_loginStat();
}

class _Face_loginStat extends State<Face_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(25),
            child: const Center(
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: const Center(
              child: Text(
                "Choose to log in and create an account!",
                style: TextStyle(fontSize: 15, color: Color_color2),
              ),
            ),
          ),
          Container(
            height: 400,
            width: 200,
            child: Image.asset(
              "image/img/singin.PNG",
              fit: BoxFit.contain,
            ),
          ),
          Container(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.all(30),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Logn_in()));
              },
              child: const Text('long in'),
              textColor: Color_color3,
              color: main__color,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200),
                side: const BorderSide(color: Color_color3),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(right: 30, left: 30, top: 5, bottom: 30),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sing_up()));
              },
              child: const Text('Sign Up'),
              textColor: Colors.white,
              color: Color_color5,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200),
                side: const BorderSide(color: Color_color3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
