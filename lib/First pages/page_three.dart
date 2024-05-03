import 'package:flutter/material.dart';
import 'package:flutter_corse/Common%20factors/widged/colors.dart';
import 'package:flutter_corse/Create%20an%20account/Face%20login.dart';
import 'package:get/route_manager.dart';

class page_three extends StatefulWidget {
  const page_three({super.key});

  @override
  State<page_three> createState() => _page_threeState();
}

class _page_threeState extends State<page_three> {
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
                  'image/img/2.PNG',
                  height: 400,
                ),
              ),
            ),
            Container(
              child: const Text(
                "The fastest delivery in the world",
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
                "Your order will be delivered to ",
                style: TextStyle(color: Color_color2, fontSize: 16),
              ),
            ),
            Container(
              child: const Text(
                " you as quickly as possible",
                style: TextStyle(color: Color_color2, fontSize: 16),
              ),
            ),
            Container(
              child: const Text(
                "We have branches all over the world",
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
                      backgroundColor: Color_color2,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: main__color1,
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
                  const Text("Done"),
                  MaterialButton(
                    onPressed: () {
                      Get.to(Face_login());
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
