import 'package:flutter/material.dart';
import 'package:flutter_corse/Common%20factors/widged/offers.dart';
import 'package:get/get.dart';
import 'package:shaped_bottom_bar/models/shaped_item_object.dart';
import 'package:shaped_bottom_bar/shaped_bottom_bar.dart';
import 'package:shaped_bottom_bar/utils/arrays.dart';

class prices extends StatefulWidget {
  const prices({super.key});

  @override
  State<prices> createState() => _offersState();
}

class _offersState extends State<prices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ShapedBottomBar(
        backgroundColor: Color.fromRGBO(255, 38, 0, 1),
        iconsColor: Colors.black,
        listItems: [
          ShapedItemObject(iconData: Icons.home, title: "Home"),
          ShapedItemObject(iconData: Icons.attach_money, title: "Prices"),
          ShapedItemObject(iconData: Icons.local_offer, title: "Offers"),
        ],
        onItemChanged: (position) {
          switch (position) {
            case 0:
              Get.to(() => OffersPage());
              break;
            case 1:
              print('4');
              break;
            case 2:
              Get.to(() => OffersPage());
              break;
          }
        },
        shape: ShapeType.DIAMOND,
        shapeColor: Color.fromARGB(255, 0, 0, 0),
        selectedIconColor: Colors.white,
        with3dEffect: true,
        animationType: ANIMATION_TYPE.FADE,
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'price\$',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Image.asset(
            'image/an offers/1.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'image/an offers/4.jpg',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
