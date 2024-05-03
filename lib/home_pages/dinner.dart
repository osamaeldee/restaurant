import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_corse/Common%20factors/widged/colors.dart';
import 'package:flutter_corse/ItemData.dart';
import 'package:get/get.dart';

class dinner_Home_Page extends StatefulWidget {
  const dinner_Home_Page({Key? key}) : super(key: key);

  @override
  State<dinner_Home_Page> createState() => dinner_PageState();
}

class dinner_PageState extends State<dinner_Home_Page> {
  List items = [
    {
      'image': 'image/din/din1.jpg',
      'titel': 'Cheese with nuts',
      'sptitel': 'Light breakfast',
      'price': '125\$',
      'data':
          "Seasoned cheese withPotato chips topped   with biscuits, some nuts, and a  final touch of  seasoned popcorn"
    },
    {
      'image': 'image/din/din2.jpg',
      'titel': 'Fries and hamburger',
      'sptitel': "McDonald's",
      'price': '175\$',
      'data': "French fries with hamburger, grilled meat slices and lettuce"
    },
    {
      'image': 'image/din/din3.jpg',
      'titel': 'Cheese pizza',
      'sptitel': 'Added pepperoni',
      'price': '95\$',
      'data':
          "Cheese pizza with pepperoni slices, large size, topped with two types of cheese, mozzarella and cheddar, with soft juice."
    },
    {
      'image': 'image/din/din4.jpg',
      'titel': 'Fried Eggs',
      'sptitel': 'Added bread',
      'price': '65\$',
      'data': "Fried eggs, luxury bread, cucumber slices, and cheese"
    },
    {
      'image': 'image/din/din5.jpg',
      'titel': 'chicken breast',
      'sptitel': 'structure',
      'price': '176\$',
      'data':
          "Chicken breasts together, salad with tomato slices together, cucumber slices together, lettuce, bread and seasoning well."
    },
    {
      'image': 'image/din/din6.jpg',
      'titel': 'potatoes',
      'sptitel': 'Fried potatoes',
      'price': '35\$',
      'data':
          "Seasoned cheese withPotato chips topped   with biscuits, some nuts, and a  final touch of  seasoned popcorn"
    },
    {
      'image': 'image/din/din7.jpg',
      'titel': 'Grilled meat',
      'sptitel': 'Added rice',
      'price': '360\$',
      'data':
          "Seasoned cheese withPotato chips topped   with biscuits, some nuts, and a  final touch of  seasoned popcorn"
    },
    {
      'image': 'image/brk/brk7.jpg',
      'titel': 'Vegetable meal',
      'sptitel': 'Snack',
      'price': '146\$',
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
      'image': 'image/imgfoot/brk1.jpg',
      'titel': 'Cheese with nuts',
      'sptitel': 'Light breakfast',
      'price': '125\$',
      'data':
          "Seasoned cheese withPotato chips topped   with biscuits, some nuts, and a  final touch of  seasoned popcorn"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(
        backgroundColor: Color.fromARGB(64, 148, 76, 76),
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text(
          'dinner meal',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 142, 158, 168),
      body: Container(
        margin: EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: AnotherCarousel(
                images: const [
                  AssetImage("image/an offers/ofb.jpg"),
                  AssetImage("image/an offers/ofb1.jpg"),
                  AssetImage("image/an offers/ofb3.jpg"),
                  AssetImage("image/an offers/ofb4.jpg"),
                  AssetImage("image/an offers/of1.jpg"),
                  AssetImage("image/an offers/of2.jpg"),
                  AssetImage("image/an offers/of3.jpg"),
                  AssetImage("image/an offers/of4.jpg"),
                  AssetImage("image/an offers/of5.jpg"),
                ],
                dotSize: 4,
                indicatorBgPadding: 5.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "Breakfast meals",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.builder(
                      itemCount: items.length,
                      physics: ScrollPhysics(),
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
    );
  }
}
