import 'package:flutter/material.dart';
import 'package:flutter_corse/Common%20factors/widged/offers.dart';

import 'package:shaped_bottom_bar/models/shaped_item_object.dart';
import 'package:shaped_bottom_bar/shaped_bottom_bar.dart';
import 'package:flutter_corse/Common factors/widged/Icon.dart';
import 'package:flutter_corse/Common factors/widged/colors.dart';
import 'package:flutter_corse/Common factors/widged/search.dart';
import 'package:flutter_corse/ItemData.dart';
import 'package:flutter_corse/home_pages/breakfast.dart';
import 'package:flutter_corse/home_pages/dinner.dart';
import 'package:flutter_corse/home_pages/lunch.dart';

import 'package:get/get.dart';
import 'package:shaped_bottom_bar/utils/arrays.dart';

import '../Common factors/price.dart';

class First_Home_Page extends StatefulWidget {
  const First_Home_Page({Key? key}) : super(key: key);

  @override
  State<First_Home_Page> createState() => _First_Home_PageState();
}

class _First_Home_PageState extends State<First_Home_Page> {
  List items = [
    {
      'image': 'image/imgfoot/brk1.jpg',
      'titel': 'Cheese with nuts',
      'sptitel': 'Light breakfast',
      'price': '125\$',
      'data':
          "Seasoned cheese withPotato chips topped   with biscuits, some nuts, and a  final touch of  seasoned popcorn"
    },
    {
      'image': 'image/imgfoot/lun2.jpg',
      'titel': 'Fries and hamburger',
      'sptitel': "McDonald's",
      'price': '175\$',
      'data': "French fries with hamburger, grilled meat slices and lettuce"
    },
    {
      'image': 'image/imgfoot/lun3.jpg',
      'titel': 'Cheese pizza',
      'sptitel': 'Added pepperoni',
      'price': '95\$',
      'data':
          "Cheese pizza with pepperoni slices, large size, topped with two types of cheese, mozzarella and cheddar, with soft juice."
    },
    {
      'image': 'image/imgfoot/din1.jpg',
      'titel': 'Fried Eggs',
      'sptitel': 'Added bread',
      'price': '65\$',
      'data': "Fried eggs, luxury bread, cucumber slices, and cheese"
    },
    {
      'image': 'image/imgfoot/lun1.jpg',
      'titel': 'chicken breast',
      'sptitel': 'structure',
      'price': '176\$',
      'data':
          "Chicken breasts together, salad with tomato slices together, cucumber slices together, lettuce, bread and seasoning well."
    },
    {
      'image': 'image/imgfoot/din2.jpg',
      'titel': 'potatoes',
      'sptitel': 'Fried potatoes',
      'price': '35\$',
      'data':
          "Seasoned cheese withPotato chips topped   with biscuits, some nuts, and a  final touch of  seasoned popcorn"
    },
    {
      'image': 'image/imgfoot/din3.jpg',
      'titel': 'Grilled meat',
      'sptitel': 'Added rice',
      'price': '360\$',
      'data':
          "Seasoned cheese withPotato chips topped   with biscuits, some nuts, and a  final touch of  seasoned popcorn"
    },
    {
      'image': 'image/imgfoot/brk2.jpg',
      'titel': 'Vegetable meal',
      'sptitel': 'Snack',
      'price': '146\$',
      'data':
          "Seasoned cheese withPotato chips topped   with biscuits, some nuts, and a  final touch of  seasoned popcorn"
    },
    {
      'image': 'image/imgfoot/lun4.jpg',
      'titel': 'Grilled chicken',
      'sptitel': 'Added flour',
      'price': '250\$',
      'data':
          "Seasoned cheese withPotato chips topped   with biscuits, some nuts, and a  final touch of  seasoned popcorn"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ShapedBottomBar(
        backgroundColor: Colors.brown,
        iconsColor: Colors.black,
        listItems: [
          ShapedItemObject(iconData: Icons.home, title: "Home"),
          ShapedItemObject(iconData: Icons.attach_money, title: "Prices"),
          ShapedItemObject(iconData: Icons.local_offer, title: "Offers"),
        ],
        onItemChanged: (position) {
          switch (position) {
            case 0:
              print('4');
              break;
            case 1:
              Get.off(() => prices());
              break;
            case 2:
              Get.off(() => OffersPage());
              break;
          }
        },
        shape: ShapeType.DIAMOND,
        shapeColor: Color.fromARGB(255, 255, 17, 0),
        selectedIconColor: Colors.white,
        with3dEffect: true,
        animationType: ANIMATION_TYPE.FADE,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/bac/bac2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: const Search(
                  icon: Icons.search,
                  text: 'Search',
                  icon2: Icons.list,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 30),
                child: const Text(
                  'Restaurant services',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromARGB(255, 255, 255, 253),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IconWidget(
                      text: "Breakfast",
                      image: "image/img/brk.png",
                      onTap: () {
                        Get.to(() => const breakfast_Home_Page());
                      },
                    ),
                    IconWidget(
                      text: "lunch",
                      image: "image/img/lun.png",
                      onTap: () {
                        Get.to(() => const lunch_Home_Page());
                      },
                    ),
                    IconWidget(
                      text: "dinner",
                      image: "image/img/dinn.png",
                      onTap: () {
                        Get.to(() => const dinner_Home_Page());
                      },
                    ),
                    IconWidget(
                      text: "Big meals",
                      image: "image/img/other.jpg",
                      onTap: () {},
                    ),
                    IconWidget(
                      text: "Food prices",
                      image: "image/img/pric.png",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: const Text(
                  "Best seller",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GridView.builder(
                        itemCount: items.length,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 210,
                        ),
                        itemBuilder: (context, i) {
                          return Card(
                            child: InkWell(
                              onTap: () {
                                Get.to(() => ItemData(
                                      data: items[i],
                                    ));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    width: 300,
                                    color: Color_color2,
                                    child: Image.asset(
                                      items[i]["image"],
                                      height: 100,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Text(
                                    items[i]["titel"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    items[i]["sptitel"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    items[i]["price"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color_color7,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
