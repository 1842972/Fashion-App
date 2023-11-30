import 'package:fashion/Screens/register_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/cart.dart';
import 'pagesname.dart';


class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  bool pass = true;
  // String? email;
  // String? password;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final myprovider = Provider.of<Cart>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            SizedBox(height: 200, child: Image.asset("assets/clo.webp")),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              onChanged: ((val) {
                myprovider.email = val;
              }),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                hintText: "Email",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)),
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                // fillColor: Colors.blueGrey,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              onChanged: ((val) {
                myprovider.password = val;
              }
                  //val = myprovider.pass as String;
                  ),
              obscureText: pass,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: (() => setState(() {
                          pass = !pass;
                        })),
                    icon:
                        Icon(pass ? Icons.visibility : Icons.visibility_off)),
                hintText: "Password",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)),
                hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                // fillColor: Colors.blueGrey,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () async {
                // ignore: unused_local_variable
                try {
                  // ignore: unused_local_variable
                  // UserCredential user = await FirebaseAuth.instance
                  //     .createUserWithEmailAndPassword(
                  //         email: myprovider.email!,
                  //         password: myprovider.password!);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home()));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Home()));
                } catch (ex) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(ex.toString())));
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 207, 142, 164),
                  ),
                  height: 60,
                  width: double.infinity,
                  child: const Text(
                    "Log In",textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
        
                  "Don't have An Account ?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(246, 0, 0, 0)),
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Register())));
                  },
                  icon: const Icon(Icons.arrow_circle_right),
                  label: const Text(
                    "Register Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(246, 0, 0, 0)),
                  ),
                ),
              ],
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
