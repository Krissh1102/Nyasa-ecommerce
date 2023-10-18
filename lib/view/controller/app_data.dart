import 'package:nyasa/view/controller/models/product.dart';
import 'package:nyasa/view/controller/models/product_category.dart';

class AppData {
  const AppData._();

  static List<Product> products = [
    Product(
        name: 'Rings',
        price: 549,
        about: 'ring that gonna suit ur asthetics',
        isAvailable: true,
        off: 200,
        quantity: 2,
        images: ['assets/images/ringImage.png'],
        type: ProductType.rings)
  ];
  static List<ProductCategory> categories = [
    ProductCategory(
      ProductType.all,
      true,
    ),
    ProductCategory(
      ProductType.bangels,
      false,
    ),
    ProductCategory(
      ProductType.chocker,
      false,
    ),
    ProductCategory(
      ProductType.rings,
      false,
    ),
    ProductCategory(
      ProductType.earrings,
      false,
    ),
    ProductCategory(
      ProductType.necklace,
      false,
    ),
  ];
}
