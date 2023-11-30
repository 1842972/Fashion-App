
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../Provider/cart.dart';
import 'check.dart';
import 'bag_details.dart';

class Bags extends StatefulWidget {
  @override
  State<Bags> createState() => _BagsState();
}

class Bag {
  late String path;

  int? price;
  int? price2;
  String? location;
  Bag(
      {required this.path,
      required this.price,
      required this.location,
      required this.price2});
}

class _BagsState extends State<Bags> {
  List<Bag> item = [
    Bag(
        path: "assets/bag4.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Bag(
        path: "assets/bag2.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Bag(
        path: "assets/bag3.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Bag(
        path: "assets/bb.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Bag(
        path: "assets/bag5.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Bag(
        path: "assets/bag6.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Bag(path: "assets/l.jpg", price: 50, location: "Fashion Store", price2: 40),
    Bag(path: "assets/m.jpg", price: 50, location: "Fashion Store", price2: 40),
    Bag(
        path: "assets/bag8.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Bag(path: "assets/o.jpg", price: 50, location: "Fashion Store", price2: 40),
    Bag(path: "assets/p.jpg", price: 50, location: "Fashion Store", price2: 40),
    Bag(
        path: "assets/bag9.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
  ];

  @override
  Widget build(BuildContext context) {
    final myprovider = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Check()));
              },
              icon: const Icon(
                Icons.shopping_cart_checkout,
                color: Color(0xFFE78AC3),
              ))
        ],
        backgroundColor: Color.fromARGB(255, 0, 131, 118),
        title: Text(
          "Bags",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Color.fromARGB(246, 255, 255, 255),
              fontSize: 30),
        ),
      ),
      body: GridView.builder(
          itemCount: item.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
          itemBuilder: (context, int i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => Details(product1: item[i])),
                    ));
              },
                child: SingleChildScrollView(
            child: Column(
            children: [
            Container(
              height: 200,
              child: Center(
                child: Image.asset(
                  item[i].path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15,),
            TextButton(
            onPressed: () {
            myprovider.add(item[i] as Bag);
            }, child: Text("Add To Cart" ,style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15),),),

            ],
            ),
            ),
            );
          }),
    );
  }
}
