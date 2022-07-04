import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:shopping_cart_with_notifier/model/item.dart';

class CartModel extends ChangeNotifier {
  final List<Item> _items = [];

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }

  double getTotalCost() {
    double total = 0.0;
    for (var element in _items) {
      total = total + element.getPrice;
    }    
    return total;
  }
}
