import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Provider/cart.dart';
import 'Screens/login_Screen.dart';
import 'package:provider/provider.dart';





void main() async {
// ...

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        home: Log(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}