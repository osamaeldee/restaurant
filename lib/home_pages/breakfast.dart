import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:elastic_drawer/elastic_drawer.dart';
import 'package:flutter/material.dart';

import 'package:flutter_corse/Common%20factors/widged/colors.dart';
import 'package:flutter_corse/ItemData.dart';
import 'package:get/get.dart';

class breakfast_Home_Page extends StatefulWidget {
  const breakfast_Home_Page({Key? key}) : super(key: key);

  @override
  State<breakfast_Home_Page> createState() => breakfast_PageState();
}

class breakfast_PageState extends State<breakfast_Home_Page> {
  List items = [
    {
      'image': 'image/brk/brk.jpg',
      'titel': 'Cheese with nuts',
      'sptitel': 'Light breakfast',
      'price': '125\$',
      'data':
          "Seasoned cheese withPotato chips topped   with biscuits, some nuts, and a  final touch of  seasoned popcorn"
    },
    {
      'image': 'image/brk/brk1.jpg',
      'titel': 'Fries and hamburger',
      'sptitel': "McDonald's",
      'price': '175\$',
      'data': "French fries with hamburger, grilled meat slices and lettuce"
    },
    {
      'image': 'image/brk/brk2.jpg',
      'titel': 'Cheese pizza',
      'sptitel': 'Added pepperoni',
      'price': '95\$',
      'data':
          "Cheese pizza with pepperoni slices, large size, topped with two types of cheese, mozzarella and cheddar, with soft juice."
    },
    {
      'image': 'image/brk/brk3.jpg',
      'titel': 'Fried Eggs',
      'sptitel': 'Added bread',
      'price': '65\$',
      'data': "Fried eggs, luxury bread, cucumber slices, and cheese"
    },
    {
      'image': 'image/brk/brk4.jpg',
      'titel': 'chicken breast',
      'sptitel': 'structure',
      'price': '176\$',
      'data':
          "Chicken breasts together, salad with tomato slices together, cucumber slices together, lettuce, bread and seasoning well."
    },
    {
      'image': 'image/brk/brk5.jpg',
      'titel': 'potatoes',
      'sptitel': 'Fried potatoes',
      'price': '35\$',
      'data':
          "Seasoned cheese withPotato chips topped   with biscuits, some nuts, and a  final touch of  seasoned popcorn"
    },
    {
      'image': 'image/brk/brk6.jpg',
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
      endDrawer: ElasticDrawer(
        drawerChild: Container(
          width: MediaQuery.of(context).size.width * 100,
        ),
        mainChild: ListView(
          padding: const EdgeInsets.only(bottom: 100),
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 33, 40, 75),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Color.fromARGB(255, 76, 136, 177),
                  fontSize: 1,
                ),
              ),
            ),
            const Center(
              child: ListTile(
                title: Text(
                  'Fast food restaurant',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              title: Image.asset(
                'image/bac/bac3.jpg',
                fit: BoxFit.cover,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Center(
              child: ListTile(
                title: Text(
                  'Dinner restaurant',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              title: Image.asset(
                'image/bac/bacd.jpg',
                fit: BoxFit.cover,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const ListTile(
              title: Text(
                'Grill restaurant',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Image.asset(
                'image/bac/bac2.jpg',
                fit: BoxFit.cover,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const ListTile(
              title: Text(''),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: const Text(
          'breakfast',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 182, 166, 157),
      body: Container(
        margin: const EdgeInsets.only(top: 5),
        child: Column(
          children: [
            Container(
              child: SizedBox(
                height: 200,
                width: double.maxFinite,
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
                  boxFit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Text(
                "Breakfast meals",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
    );
  }
}
