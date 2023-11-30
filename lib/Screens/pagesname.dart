import 'package:fashion/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



import '../Provider/cart.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? name;
  @override
  Widget build(BuildContext context) {
    final myprovider = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Fashion Store",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "${myprovider.password}",
                style: TextStyle(color: Colors.black87, fontSize: 20),
              ),
              accountEmail: Text("${myprovider.email}",
                  style: TextStyle(color: Colors.black87, fontSize: 20)),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 0, 196, 179)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(("assets/clo.webp")),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: Text("Home",
                    style: TextStyle(color: Colors.black, fontSize: 20))),
            SizedBox(
              height: 10,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.category,
                  color: Colors.black,
                ),
                label: Text("Clothes",
                    style: TextStyle(color: Colors.black87, fontSize: 20))),
            SizedBox(
              height: 10,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.category,
                  color: Colors.black,
                ),
                label: Text("Bags",
                    style: TextStyle(color: Colors.black87, fontSize: 20))),
            SizedBox(
              height: 10,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.category,
                  color: Colors.black,
                ),
                label: Text("Watchs",
                    style: TextStyle(color: Colors.black87, fontSize: 20))),
            SizedBox(
              height: 10,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_checkout,
                  color: Colors.black,
                ),
                label: Text(" My Cart",
                    style: TextStyle(color: Colors.black87, fontSize: 20))),
          ],
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 0, 196, 179),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(height: 200, child: Image.asset("assets/cl.webp")),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => HomeScreen())));
              },
              label: const Text(
                "Watchs",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              icon: const Icon(
                Icons.arrow_circle_right,
                color: Color.fromARGB(255, 253, 253, 253),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => HomeScreen())));
              },
              label: const Text(
                "Clothes",
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(249, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
              icon: const Icon(
                Icons.arrow_circle_right,
                color: Color.fromARGB(255, 253, 253, 253),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => HomeScreen())));
              },
              label: const Text(
                "Bags",
                style: TextStyle(
                    color: Color.fromARGB(248, 255, 255, 255),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              icon: const Icon(
                Icons.arrow_circle_right,
                color: Color.fromARGB(255, 253, 253, 253),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
