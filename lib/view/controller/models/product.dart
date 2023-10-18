import 'package:nyasa/view/controller/models/product_Size.dart';

enum ProductType { all, rings, earrings, necklace, chocker, bangels }

class Product {
  String name;
  int price;

  int? off;
  String about;
  bool isAvailable;
  ProductSizeType? sizes;
  int _quantity;
  List<String> images;

  ProductType type;

  int get quantity => _quantity;

  set quantity(int newQuantity) {
    if (newQuantity >= 0) _quantity = newQuantity;
  }

  Product({
    required this.name,
    required this.price,
    required this.about,
    required this.isAvailable,
    this.sizes,
    required this.off,
    required int quantity,
    required this.images,
    required this.type,
  }) : _quantity = quantity;
}
