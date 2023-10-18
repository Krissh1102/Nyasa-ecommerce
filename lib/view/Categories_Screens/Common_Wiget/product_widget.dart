import 'package:nyasa/constents/consts.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      required this.imagee,
      required this.text,
      required this.tap,
      required this.price});

  final String text;
  final String price;
  final String imagee;
  final tap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 390,
      child: GestureDetector(
        onTap: tap,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 85, 85, 85)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(colors: [
                      Colors.black,
                      Color.fromARGB(255, 75, 74, 74),
                      Colors.black
                    ])),
                child: Image(
                  image: AssetImage(imagee),
                  height: 500,
                  width: 100,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.currency_rupee_outlined),
                      Text(
                        price,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
