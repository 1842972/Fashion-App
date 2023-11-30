import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../Provider/cart.dart';
import 'check.dart';
import 'whatch_details.dart';

class Watches extends StatefulWidget {
  @override
  State<Watches> createState() => _WatchState();
}

class Watch {
  late String path;

  int? price;
  int? price2;
  String? location;
  Watch(
      {required this.path,
      required this.price,
      required this.location,
      required this.price2});
}

class _WatchState extends State<Watches> {
  List<Watch> items = [
    Watch(
        path: "assets/ttt.webp",
        price: 60,
        location: "Fashion Store",
        price2: 50),
    Watch(
        path: "assets/aa.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Watch(
        path: "assets/c.jpg", price: 50, location: "Fashion Store", price2: 40),
    Watch(
        path: "assets/d.jpg", price: 50, location: "Fashion Store", price2: 40),
    Watch(
        path: "assets/e.jpg", price: 50, location: "Fashion Store", price2: 40),
    Watch(
        path: "assets/f.jpg", price: 50, location: "Fashion Store", price2: 40),
    Watch(
        path: "assets/g.jpg", price: 50, location: "Fashion Store", price2: 40),
    Watch(
        path: "assets/h.jpg", price: 50, location: "Fashion Store", price2: 40),
    Watch(
        path: "assets/d.jpg", price: 60, location: "Fashion Store", price2: 50),
    Watch(
        path: "assets/w.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Watch(
        path: "assets/ch.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Watch(
        path: "assets/ee.jpg",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Watch(
        path: "assets/t.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Watch(
        path: "assets/d.jpg", price: 60, location: "Fashion Store", price2: 50),
    Watch(
        path: "assets/e.jpg", price: 60, location: "Fashion Store", price2: 50),
    Watch(
        path: "assets/f.jpg", price: 70, location: "Fashion Store", price2: 60),
    Watch(
        path: "assets/closeup.webp",
        price: 40,
        location: "Fashion Store",
        price2: 30),
    Watch(
        path: "assets/ccc.webp",
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
          "Watches",
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Color.fromARGB(246, 255, 255, 255),
              fontSize: 30),
        ),
      ),
      body: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, int i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => Details3(product3: items[i])),
                    ));
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      child: Image.asset(
                        items[i].path,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15,),
                    TextButton(
                      onPressed: () {
                        myprovider.add3(items[i]);
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
