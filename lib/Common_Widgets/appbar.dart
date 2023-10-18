import '../constents/consts.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: Colors.orange,
      backgroundColor: Colors.grey,
    );
  }
}
