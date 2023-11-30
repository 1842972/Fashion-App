
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/cart.dart';
import 'pagesname.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? email;
  String? password;
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    final myprovider = Provider.of<Cart>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 200,
                child: Image.asset(
                    "assets/baby-girl-fashion-frame-composition_1284-20419.webp")),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              onSaved: ((val) {
                val = myprovider.name as String?;
              }),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                hintText: "Name",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)),
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.blueGrey,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              onSaved: ((val) {
                val = myprovider.email as String?;
              }),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                hintText: "Email",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)),
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.blueGrey,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              obscureText: pass,
              onSaved: ((val) {
                val = myprovider.password as String?;
              }),
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: (() => setState(() {
                          pass = !pass;
                        })),
                    icon: Icon(
                        pass ? Icons.visibility : Icons.visibility_off)),
                hintText: "Password",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)),
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.blueGrey,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              onSaved: ((val) {
                val = myprovider.phone as String?;
              }),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.phone),
                hintText: "phone",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)),
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.blueGrey,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Do you Finish ?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(246, 0, 0, 0)),
                ),
                TextButton.icon(
                  onPressed: () async {
                    try {
                      // ignore: unused_local_variable
                      // UserCredential user = await FirebaseAuth.instance
                      //     .createUserWithEmailAndPassword(
                      //         email: email!, password: password!);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    } catch (ex) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(ex.toString())));
                    }
                  },
                  icon: const Icon(Icons.arrow_circle_right),
                  label: const Text(
                    "Do Shopping  Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(246, 0, 0, 0)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
