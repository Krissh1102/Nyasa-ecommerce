import 'package:flutter/material.dart';
import 'package:nyasa/constents/consts.dart';
import 'package:nyasa/view/Order_Now/paymentbuttonWidget.dart';
import 'package:nyasa/view/cart_screen/EmptyCart.dart';

class OrderNowScreen extends StatefulWidget {
  const OrderNowScreen({super.key});

  @override
  State<OrderNowScreen> createState() => _OrderNowScreenState();
}

class _OrderNowScreenState extends State<OrderNowScreen> {
  // ignore: unused_field
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
          padding: const EdgeInsets.all(8),
          child: _isLoading
              ? SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.2,
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Colors.orange,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                )
              : Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 152, 146),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: const Color.fromARGB(255, 255, 17, 0))),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.warning_amber_outlined,
                            color: Color.fromARGB(255, 255, 17, 0),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Once Order.You cannot return the\n product nor you can cancel it.',
                            style: TextStyle(
                                color: Color.fromARGB(255, 219, 17, 2),
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.delivery_dining_outlined),
                        Text(
                          'Delivery may take 3 to 4 days',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    const Text(
                        'If any issue occurs we would like to contact you.',
                        style: TextStyle(fontSize: 20)),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(),
                    // FOR GOOGLE MAPS
                    const SizedBox(
                      height: 120,
                    ),

                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.location_city_outlined),
                        labelText: 'Address in detail',
                        hintText: 'Flat No. / Building / Society Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter address so we can locate you.';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.streetAddress,
                    ),
                    const SizedBox(
                      height: 120,
                    ),

                    const Text(
                      'Payment Methods',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Divider(color: Colors.grey),
                    const SizedBox(
                      height: 10,
                    ),
                    const PaymentButton(
                        icon: Icons.payment_outlined,
                        index: 0,
                        subtitle: 'safest and fastest payment',
                        title: 'Pay Online'),
                    const SizedBox(
                      height: 10,
                    ),
                    const PaymentButton(
                        icon: Icons.paypal_outlined,
                        index: 1,
                        subtitle: 'Pay when delivery is done',
                        title: 'Cash On Delivery'),
                    const SizedBox(
                      height: 120,
                    ),

                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sub Total',
                              style: TextStyle(fontSize: 15),
                            ),
                            Row(
                              children: [
                                Icon(Icons.currency_rupee_sharp),
                                Text(
                                  '2344',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                "Procced to pay",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
        ),
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
            Navigator.pop(context);
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
