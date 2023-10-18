import 'package:nyasa/constents/consts.dart';
import 'package:nyasa/view/Categories_Screens/Common_Wiget/product_widget.dart';

import 'package:nyasa/view/Product_Screen/prooduct_details.dart';

import 'package:shimmer/shimmer.dart';

import 'package:nyasa/view/Categories_Screens/Common_Wiget/topHeadWidget.dart';
import 'package:nyasa/view/UserScreen/UserScreen.dart';
import 'package:nyasa/view/cart_screen/EmptyCart.dart';

class RingsScreen extends StatefulWidget {
  const RingsScreen({super.key});

  @override
  State<RingsScreen> createState() => _RingsScreenState();
}

class _RingsScreenState extends State<RingsScreen> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        child: Container(
            padding: const EdgeInsets.all(3),
            child: Column(
              children: [
                _isLoading
                    ? SizedBox(
                        height: 140,
                        child: ListView.builder(
                          itemCount: 9,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 26,
                                    child: Shimmer.fromColors(
                                      baseColor: Colors.grey.withOpacity(0.25),
                                      highlightColor:
                                          Colors.black.withOpacity(0.6),
                                      period: const Duration(seconds: 1),
                                      child: Container(
                                        height: 90,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color:
                                                Colors.grey.withOpacity(0.8)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          shrinkWrap: true,
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const CategorytopscreenWidget(),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ProductWidget(
                            imagee: 'assets/images/ringImage.png',
                            price: '5430',
                            tap: () {
                              Get.to(() => const ProducctDetailsScreen());
                            },
                            text: 'Snake Ring',
                          )
                        ],
                      )
              ],
            )),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
          onPressed: () {
            Get.to(() => const UserScreen());
          },
        ),
        title: const Image(
          image: AssetImage(
            'assets/images/NYASAedited.png',
          ),
          width: 150,
          height: 40,
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 0, top: 7),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: () {
                Get.to(() => const EmptyCartScreen());
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
              ),
            ),
          ),
        ]);
  }
}
