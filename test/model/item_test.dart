import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_cart_with_notifier/model/item.dart';

void main() {
  final Item item = Item(name: 'T-Shirt', price: 100.0);

  test('Price need to be returned', () {
    expect(100.0, item.getPrice);
  });

  test('Name need to be returned', () {
    expect('T-Shirt', item.getName);
  });
}
