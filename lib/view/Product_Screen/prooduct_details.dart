import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';

import 'package:nyasa/view/cart_screen/Cart.dart';
import 'package:nyasa/view/controller/models/product.dart';
import 'package:photo_view/photo_view.dart';

import '../../constents/consts.dart';

class ProducctDetailsScreen extends StatefulWidget {
  const ProducctDetailsScreen({super.key});

  @override
  State<ProducctDetailsScreen> createState() => _ProducctDetailsScreenState();
}

class _ProducctDetailsScreenState extends State<ProducctDetailsScreen> {
  int currentState = 0;
  Product? product;

  List imageList = [
    {"id": 1, "image_path": 'assets/images/startScreen1.jpeg'},
    {"id": 2, "image_path": 'assets/images/startScreen2.jpeg'},
    {"id": 3, "image_path": 'assets/images/startScreen3.jpeg'}
  ];

  @override
  void initState() {
    product?.isAvailable = true;
    super.initState();
  }

  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        dragStartBehavior: DragStartBehavior.down,
        child: Container(
          padding: const EdgeInsets.all(6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print(currentState);
                      }
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        CarouselSlider(
                          items: imageList
                              .map((item) => ClipRRect(
                                    borderRadius: BorderRadius.circular(1),
                                    child: PhotoView(
                                      enableRotation: false,
                                      wantKeepAlive: true,
                                      imageProvider: AssetImage(
                                        item['image_path'],
                                      ),
                                    ),
                                  ))
                              .toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: false,
                            aspectRatio: 1,
                            viewportFraction: 1,
                            enableInfiniteScroll: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentState = index;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        if (kDebugMode) {
                          print(entry);
                        }
                        if (kDebugMode) {
                          print(entry.key);
                        }
                        return GestureDetector(
                          onTap: () =>
                              carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentState == entry.key ? 17 : 7,
                            height: 7,
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentState == entry.key
                                    ? const Color.fromARGB(255, 255, 255, 255)
                                    : const Color.fromARGB(255, 255, 202, 145)),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              Text(
                product?.off != null
                    ? "\$${product?.off}"
                    : "\$${product?.price}",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(width: 3),
              Visibility(
                visible: product?.off != null ? true : false,
                child: Text(
                  "\$${product?.price}",
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                product?.isAvailable ?? true
                    ? "Available in stock"
                    : "Not available",
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              Text(
                "About",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              Text(product?.about ?? 'hehe'),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Icon(Icons.delivery_dining_outlined),
                  Text('Delivery may take 3 to 4 days')
                ],
              ),
              const Text('If any issue occurs we would like to contact you'),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: product?.isAvailable ?? true
                      ? () => controller.addToCart(product!)
                      : () {},
                  child: const Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Add to cart",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
