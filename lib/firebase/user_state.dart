import 'package:nyasa/constents/consts.dart';
import 'package:nyasa/view/UserScreen/UserScreen.dart';
import 'package:nyasa/view/auth_screen/WelcomeScreen.dart';

class UserState extends StatelessWidget {
  const UserState({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            const UserScreen();
          } else {
            (const WelcomeScreen());
          }
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Error occured'),
          );
        }
        return paddingZero;
      },
    );
  }
}
