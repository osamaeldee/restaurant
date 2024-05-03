import 'package:flutter/material.dart';

class ItemData extends StatefulWidget {
  final data;

  const ItemData({
    this.data,
  }) : super();

  @override
  State<ItemData> createState() => _ItemDataState();
}

class _ItemDataState extends State<ItemData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(194, 66, 245, 1),
      endDrawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.data['titel'],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 253, 253),
              ),
            ),
            const SizedBox(width: 8),
            Icon(Icons.shopping_cart_outlined,
                color: Color.fromARGB(255, 238, 234, 234)),
          ],
        ),
        backgroundColor: Colors.brown,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/bac/bac3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Image.asset(
              widget.data['image'],
              fit: BoxFit.cover,
              height: 300,
              width: double.infinity,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.data['titel'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.data['sptitel'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 204, 194, 194),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.data['price'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromRGBO(61, 240, 6, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Data: ${widget.data["titel"]}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 252, 251, 251),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.data['data'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Add",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      color: Colors.brown,
                    ),
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
