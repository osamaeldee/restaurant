import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_corse/home_pages/first_home_page.dart';
import 'package:get/get.dart';
import 'package:shaped_bottom_bar/models/shaped_item_object.dart';
import 'package:shaped_bottom_bar/shaped_bottom_bar.dart';
import 'package:shaped_bottom_bar/utils/arrays.dart';
import '../price.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({Key? key}) : super(key: key);

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ShapedBottomBar(
        backgroundColor: const Color.fromARGB(31, 255, 255, 255),
        iconsColor: const Color.fromARGB(255, 0, 0, 0),
        bottomBarTopColor: const Color.fromARGB(255, 245, 149, 4),
        listItems: [
          ShapedItemObject(iconData: Icons.home, title: "Home"),
          ShapedItemObject(iconData: Icons.attach_money, title: "Prices"),
          ShapedItemObject(iconData: Icons.local_offer, title: "Offers"),
        ],
        onItemChanged: (position) {
          switch (position) {
            case 0:
              Get.off(() => const First_Home_Page());
              break;
            case 1:
              Get.off(() => const prices());
              break;
            case 2:
              print('object');
              break;
          }
        },
        shape: ShapeType.TRIANGLE,
        shapeColor: const Color.fromARGB(255, 154, 206, 13),
        with3dEffect: true,
        animationType: ANIMATION_TYPE.SLIDE_VERTICALLY,
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'offers\$',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 255, 8)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: const Text(
                'Offers on grills',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 153, 0),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Card(
                  elevation: 4,
                  child: AnotherCarousel(
                    images: const [
                      AssetImage("image/an offers/ofb.jpg"),
                      AssetImage("image/an offers/ofb1.jpg"),
                      AssetImage("image/an offers/ofb3.jpg"),
                      AssetImage("image/an offers/ofb4.jpg"),
                      AssetImage("image/an offers/of1.jpg"),
                      AssetImage("image/an offers/of2.jpg"),
                      AssetImage("image/an offers/of3.jpg"),
                      AssetImage("image/an offers/of5.jpg"),
                    ],
                    dotSize: 0,
                    indicatorBgPadding: 0,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: const Text(
                ' Light breakfast meals',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 153, 0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Card(
                  elevation: 4,
                  child: AnotherCarousel(
                    images: const [
                      AssetImage("image/an offers/ofr2.jpg"),
                      AssetImage("image/an offers/ofr1.jpg"),
                      AssetImage("image/an offers/ofr3.jpg"),
                      AssetImage("image/an offers/ofr4.jpg"),
                      AssetImage("image/an offers/ofr5.jpg"),
                      AssetImage("image/an offers/of2.jpg"),
                      AssetImage("image/an offers/of3.jpg"),
                      AssetImage("image/an offers/of4.jpg"),
                      AssetImage("image/an offers/of5.jpg"),
                    ],
                    dotSize: 0,
                    indicatorBgPadding: 0,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: const Text(
                'Offers on lunch meals',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 153, 0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Card(
                  elevation: 4,
                  child: AnotherCarousel(
                    images: const [
                      AssetImage("image/an offers/ofer1.jpg"),
                      AssetImage("image/an offers/ofer2.jpg"),
                      AssetImage("image/an offers/ofr4.jpg"),
                      AssetImage("image/an offers/of2.jpg"),
                      AssetImage("image/an offers/of3.jpg"),
                      AssetImage("image/an offers/of4.jpg"),
                      AssetImage("image/an offers/of5.jpg"),
                    ],
                    dotSize: 0,
                    indicatorBgPadding: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
