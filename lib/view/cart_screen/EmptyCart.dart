import 'package:nyasa/constents/consts.dart';

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        elevation: 1,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        child: Container(
          padding: const EdgeInsets.all(6),
          margin: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/empty_cart.png'),
                width: 370,
                height: 370,
              ),
              const Text(
                'Your Cart is empty :(',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Looks like You didn\'t add anything to your cart',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => Navigator.pop(context));
                    },
                    child: const Text('Shop Now')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
