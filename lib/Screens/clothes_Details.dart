import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



import '../Provider/cart.dart';
//import 'bag.dart';
import 'check.dart';
import 'clothes.dart';

// ignore: must_be_immutable
class Details2 extends StatefulWidget {
  late Cloth product2;

  Details2({required this.product2});
  @override
  State<Details2> createState() => _Details2State();
}

class _Details2State extends State<Details2> {
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                child: Image.asset(
                  widget.product2.path,
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
                height: 20,
              ),
              Row(
                children: [
                  const Text(" Details  : ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  const Text("First Price: ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Text(" ${widget.product2.price} ",
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  const Text("Second Price : ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Text(" ${widget.product2.price2} ",
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
              Text(" ${widget.product2.location} ",
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
                  var i;
                  myprovider.add(myprovider.selected[i]);
                },
                icon: const Icon(Icons.shopping_cart_checkout),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
