import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../Provider/cart.dart';
import 'bag.dart';
import 'check.dart';


// ignore: must_be_immutable
class Details extends StatefulWidget {
  late Bag product1;

  Details({required this.product1});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final myprovider = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE78AC3),
        title: const Text(
          "Details screen",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: ((context, int i) {
          return Column(
            children: [
              Container(
                height: 400,
                child: Image.asset(
                  widget.product1.path,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Color(0xFFE78AC3)),
                  const Icon(
                    Icons.star,
                    color: Color(0xFFE78AC3),
                  ),
                  const Icon(
                    Icons.star,
                    color: Color(0xFFE78AC3),
                  ),
                  const Icon(Icons.star, color: Color(0xFFE78AC3)),
                  const Icon(
                    Icons.star,
                    color: Color(0xFFE78AC3),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Check()));
                      },
                      icon: const Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFFE78AC3),
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(" Details  : ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                ],
              ),
              Row(
                children: [
                  const Text("First Price: ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Text(" ${widget.product1.price} ",
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  const Text("Second Price : ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Text(" ${widget.product1.price2} ",
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
              Text(" ${widget.product1.location} ",
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              const Text("Avilable Color : Red ,Black ,White",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 30,
              ),
              TextButton.icon(
                label: const Text("Add To Cart ",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                onPressed: () {
                  myprovider.add(myprovider.selected[i]);
                },
                icon: const Icon(
                  Icons.shopping_cart_checkout,
                  color: Color(0xFFE78AC3),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
