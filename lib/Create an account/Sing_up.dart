import 'package:flutter/material.dart';
import 'package:flutter_corse/Common%20factors/widged/text_fotm_feilg.dart';
import 'package:flutter_corse/Common%20factors/widged/colors.dart';
import 'package:flutter_corse/home_pages/first_home_page.dart';
import 'package:get/get.dart';

import 'Log_in.dart';

class Sing_up extends StatefulWidget {
  @override
  State<Sing_up> createState() => _Sing_upState();
}

class _Sing_upState extends State<Sing_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/bac/bac3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(25),
              child: const Center(
                child: Text(
                  "Sing Up",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              child: const Center(
                child: Text(
                  "Create a free account!",
                  style: TextStyle(fontSize: 15, color: Colors.white),
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
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const textformfeild(
                  labelText: "Enter your name",
                ),
                const textformfeild(
                  labelText: "Enter your password",
                ),
                const textformfeild(
                  labelText: "Enter your email",
                ),
                const textformfeild(
                  labelText: "Enter your password confirmation",
                ),
                Container(
                  margin: const EdgeInsets.only(
                      right: 90, left: 110, top: 50, bottom: 30),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sing_up()));
                    },
                    child: InkWell(
                        onTap: () {
                          Get.to(() => First_Home_Page());
                        },
                        child: const Text('Sign Up')),
                    textColor: Colors.white,
                    color: Color_color5,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Color_color3),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(Logn_in());
                  },
                  child: Center(
                    child: Column(
                      children: [
                        Text('You already have an account?',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        Text(
                          "Logn in!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
