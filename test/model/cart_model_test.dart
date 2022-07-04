import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_cart_with_notifier/model/cart_model.dart';
import 'package:shopping_cart_with_notifier/model/item.dart';

void main() {
  const double delta = 0.00000001;

  test('Initial cost is zero', () {
    final cart = CartModel();
    expect(cart.getTotalCost(), equals(0.0));
  });

  test('Total is calculated properly', () {
    final cart = CartModel();
    cart.add(Item(name: 'Item 1', price: 100.1234));
    cart.add(Item(name: 'Item 2', price: 20.3456));
    expect(cart.getTotalCost(), closeTo(120.469, delta));
  });

  test('Adding item increases Total cost', () {
    final cart = CartModel();
    cart.addListener(() {
      expect(cart.getTotalCost(), closeTo(100.1234, delta));
    });
    cart.add(Item(name: 'Item 1', price: 100.1234)); 
  });
}
