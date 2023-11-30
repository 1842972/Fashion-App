import 'package:flutter/material.dart';

import '../Screens/watches.dart';
import '../Screens/bag.dart';
import '../Screens/clothes.dart';

class Cart with ChangeNotifier {
  List selected = [];
  int price = 0;
  String? email;
  String? phone;
  String? name;
  String? password;
  add(Bag product1) {
    selected.add(product1);
    price += product1.price2!;
    notifyListeners();
  }

  remove(Bag product1) {
    selected.remove(product1);
    price += product1.price2! as int;
    notifyListeners();
  }

  add2(Cloth product2) {
    selected.add(product2);
    price += product2.price! as int;
    notifyListeners();
  }

  add3(Watch product3) {
    selected.add(product3);
    price += product3.price2! as int;
    notifyListeners();
  }
}
