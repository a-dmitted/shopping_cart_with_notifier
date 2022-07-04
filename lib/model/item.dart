class Item {
  Item({required String name, required double price}) :
  _name = name,
  _price = price;

  final double _price;
  final String _name;

  double get getPrice => _price;
  String get getName => _name;
}
