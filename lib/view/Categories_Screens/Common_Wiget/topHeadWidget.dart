import 'package:nyasa/constents/consts.dart';
import 'package:nyasa/view/Categories_Screens/Common_Wiget/dropdown.dart';

class CategorytopscreenWidget extends StatelessWidget {
  const CategorytopscreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.filter_alt_outlined),
        Text(
          'Filter',
        ),
        SizedBox(
          width: 190,
        ),
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Dropdownmenu(),
        ),
      ],
    );
  }
}
