import 'package:flutter/material.dart';
import 'package:flutter_corse/Common%20factors/widged/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:flutter_corse/First%20pages/page_two.dart';

class page_one extends StatefulWidget {
  const page_one({super.key});

  @override
  State<page_one> createState() => _page_oneState();
}

class _page_oneState extends State<page_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: main__color,
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  'image/img/Capture.PNG',
                  height: 400,
                ),
              ),
            ),
            Container(
              child: const Text(
                "Shop and enjoy discounts",
                style: TextStyle(
                  color: main__color1,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 30,
            ),
            Container(
              child: const Text(
                "Welcome, dear customer, to our online store",
                style: TextStyle(color: Color_color2, fontSize: 16),
              ),
            ),
            Container(
              child: const Text(
                "For the best offers and discounts, click here",
                style: TextStyle(fontSize: 14, color: Color_color2),
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 170),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: main__color1,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const CircleAvatar(
                      radius: 4,
                      backgroundColor: Color_color2,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Color_color2,
                  ),
                ],
              ),
            ),
            Container(
              height: 75,
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Next"),
                  MaterialButton(
                    onPressed: () {
                      Get.to(const page_two());
                    },
                    child: const Text("Skip"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
