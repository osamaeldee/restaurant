import 'package:flutter/material.dart';
import 'package:flutter_corse/Common%20factors/widged/colors.dart';
import 'package:get/get.dart';
import 'package:flutter_corse/First%20pages/page_three.dart';

class page_two extends StatefulWidget {
  const page_two({super.key});

  @override
  State<page_two> createState() => _page_twoState();
}

class _page_twoState extends State<page_two> {
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
                  'image/img/1.PNG',
                  height: 400,
                ),
              ),
            ),
            Container(
              child: const Text(
                "Best offers and prices",
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
                "Order from anywhere, anytime",
                style: TextStyle(color: Color_color2, fontSize: 16),
              ),
            ),
            Container(
              child: const Text(
                "Offers  are  available  at  all  times",
                style: TextStyle(fontSize: 14, color: Color_color2),
              ),
            ),
            Container(
              child: const Text(
                "Order and we will do the rest",
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
                    backgroundColor: Color_color2,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const CircleAvatar(
                      radius: 4,
                      backgroundColor: main__color1,
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
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Next"),
                  MaterialButton(
                    onPressed: () {
                      Get.to(const page_three());
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
