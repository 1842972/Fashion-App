import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



import '../Provider/cart.dart';
import 'check.dart';
import 'clothes_Details.dart';

class Clothes extends StatefulWidget {
  @override
  State<Clothes> createState() => _ClothesState();
}

class Cloth {
  late String path;

  int? price;
  int? price2;
  String? location;
  Cloth(
      {required this.path,
      required this.price,
      required this.location,
      required this.price2});
}

class _ClothesState extends State<Clothes> {
  List<Cloth> itemes = [
    Cloth(
        path: "assets/13.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Cloth(
        path: "assets/14.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Cloth(
        path: "assets/shirt1.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Cloth(
        path: "assets/shirt2.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Cloth(
        path: "assets/shirt3.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Cloth(
        path: "assets/shirt4.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Cloth(
        path: "assets/shirt5.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Cloth(
        path: "assets/shirt6.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Cloth(
        path: "assets/shirt7.webp",
        price: 50,
        location: "Fashion Store",
        price2: 40),
    Cloth(
        path: "assets/shirt8.webp",
        price: 50,
        location: "Fashion Store",
        price2: 50),
    Cloth(
        path: "assets/shirt9.webp",
        price: 70,
        location: "Fashion Store",
        price2: 60),
    Cloth(
        path: "assets/shirt10.webp",
        price: 70,
        location: "Fashion Store",
        price2: 80),
    Cloth(
        path: "assets/11.webp",
        price: 90,
        location: "Fashion Store",
        price2: 80),
    Cloth(
        path: "assets/12.webp",
        price: 90,
        location: "Fashion Store",
        price2: 80),
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
          "Clothes",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Color.fromARGB(246, 255, 255, 255),
              fontSize: 30),
        ),
      ),
      body: GridView.builder(
          itemCount: itemes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 50),
          itemBuilder: (context, int i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => Details2(product2: itemes[i])),
                    ));
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      child: Image.asset(
                        itemes[i].path,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15,),
                    TextButton(
                        onPressed: () {
                          myprovider.add2(itemes[i]);
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
