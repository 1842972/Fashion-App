import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../Provider/cart.dart';

class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    final myprovider = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE78AC3),
        title: const Text(
          "Check Out List",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: myprovider.selected.length,
                    itemBuilder: ((context, int index) {
                      return Column(
                        children: [
                          Card(
                            elevation: 10,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage(myprovider.selected[index].path),
                              ),
                              title: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Text(
                                    "${myprovider.selected[index].location}",
                                  ),
                                ],
                              ),
                              subtitle: Row(
                                children: [
                                  Text(
                                    "${myprovider.selected[index].price}\$",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  Text(
                                      " - ${myprovider.selected[index].price2}\$")
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    })),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 75, bottom: 75, left: 20, right: 20),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 243, 126, 165),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "you selected : ${myprovider.selected.length}  products ",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Your bill is ${myprovider.price}\$",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    )
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
