import 'package:flutter/material.dart';
import 'package:flutter_corse/Common%20factors/widged/text_fotm_feilg.dart';
import 'package:flutter_corse/Common%20factors/widged/colors.dart';
import 'package:flutter_corse/Create%20an%20account/Sing_up.dart';
import 'package:flutter_corse/home_pages/first_home_page.dart';
import 'package:get/get.dart';

class Logn_in extends StatefulWidget {
  @override
  State<Logn_in> createState() => _Logn_inState();
}

class _Logn_inState extends State<Logn_in> {
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
                "Logn in",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: const Center(
              child: Text(
                "Create a free account!",
                style: TextStyle(fontSize: 15, color: Color_color2),
              ),
            ),
          ),
          Container(
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "  Enter your data",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const textformfeild(
            labelText: "Enter your email",
          ),
          const textformfeild(labelText: "Enter password"),
          Container(
            margin: const EdgeInsets.only(
                right: 90, left: 110, top: 50, bottom: 30),
            child: MaterialButton(
              onPressed: () {
                Get.to(const First_Home_Page());
              },
              child: const Text('logen in'),
              textColor: Colors.white,
              color: Color_color5,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: const BorderSide(color: Color_color3),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(Sing_up());
            },
            child: Center(
              child: Column(
                children: [
                  Text("don't have account?"),
                  Text(
                    "Sing in!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 17),
                  )
                ],
              ),
            ),
          ),
          Image.asset(
            "image/img/p.PNG",
            width: 100,
            height: 210,
          ),
        ],
      ),
    );
  }
}
