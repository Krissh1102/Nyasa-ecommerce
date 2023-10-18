import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:nyasa/constents/consts.dart';
import 'package:nyasa/view/Categories_Screens/Rings_Screen/RingsScreen.dart';

import 'package:nyasa/view/Home_Screen/Widgets/CategoryButton.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  int currentState = 0;
  List imageList = [
    {"id": 1, "image_path": 'assets/images/startScreen1.jpeg'},
    {"id": 2, "image_path": 'assets/images/startScreen2.jpeg'},
    {"id": 3, "image_path": 'assets/images/startScreen3.jpeg'}
  ];

  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      dragStartBehavior: DragStartBehavior.down,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
            child: Container(
              padding: const EdgeInsets.all(14),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Stack(
            children: [
              InkWell(
                onTap: () {
                  if (kDebugMode) {
                    print(currentState);
                  }
                },
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.grey,
                    Color.fromARGB(255, 96, 96, 96)
                  ], end: Alignment.bottomRight, begin: Alignment.topLeft)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        '  Welcome',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: imageList
                            .map((item) => Container(
                                  padding: const EdgeInsets.all(10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      item['image_path'],
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                ))
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: false,
                          aspectRatio: 1.75,
                          viewportFraction: 1,
                          enableInfiniteScroll: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentState = index;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
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
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentState == entry.key ? 17 : 7,
                        height: 7,
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentState == entry.key
                                ? Colors.black
                                : const Color.fromARGB(255, 255, 202, 145)),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '   Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  CategoryButton(
                      imagee: 'assets/images/ringImage.png',
                      text: 'Rings',
                      tap: () {
                        Get.to(() => const RingsScreen());
                      }),
                  const SizedBox(
                    width: 20,
                  ),
                  CategoryButton(
                      imagee: 'assets/images/ringImage.png',
                      text: 'Rings',
                      tap: () {
                        Get.to(() => const RingsScreen());
                      }),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  CategoryButton(
                      imagee: 'assets/images/ringImage.png',
                      text: 'Rings',
                      tap: () {
                        Get.to(() => const RingsScreen());
                      }),
                  const SizedBox(
                    width: 20,
                  ),
                  CategoryButton(
                      imagee: 'assets/images/ringImage.png',
                      text: 'Rings',
                      tap: () {
                        Get.to(() => const RingsScreen());
                      }),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  CategoryButton(
                      imagee: 'assets/images/ringImage.png',
                      text: 'Rings',
                      tap: () {
                        Get.to(() => const RingsScreen());
                      }),
                  const SizedBox(
                    width: 20,
                  ),
                  CategoryButton(
                      imagee: 'assets/images/ringImage.png',
                      text: 'Rings',
                      tap: () {
                        Get.to(() => const RingsScreen());
                      }),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  CategoryButton(
                      imagee: 'assets/images/ringImage.png',
                      text: 'Rings',
                      tap: () {
                        Get.to(() => const RingsScreen());
                      }),
                  const SizedBox(
                    width: 20,
                  ),
                  CategoryButton(
                      imagee: 'assets/images/ringImage.png',
                      text: 'Rings',
                      tap: () {
                        Get.to(() => const RingsScreen());
                      }),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            '                                               @Nyasa',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
