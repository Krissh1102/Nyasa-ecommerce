import 'package:nyasa/constents/consts.dart';
import 'package:nyasa/view/Login_Screen/login_screen.dart';
import 'package:nyasa/view/Order_Now/OrderNowScreen.dart';
import 'package:nyasa/view/Profile_Screen/notSignedIn.dart';
import 'package:nyasa/view/Profile_Screen/profileScreen.dart';
import 'package:nyasa/view/Home_Screen/HomeScreenBody.dart';
import 'package:nyasa/view/cart_screen/EmptyCart.dart';

import 'package:responsive_builder/responsive_builder.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() {
    return _UserScreen();
  }
}

class _UserScreen extends State<UserScreen> {
  late int _selectedIndex = 0;

  final List<Widget> _screens = [
    //Screen for homepage
    const HomeScreenBody(),
    const UserProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout(
      mobile: mobileScreen(context),
    );
  }

//Mobile Screen---------------------------------------------------------------------
  Scaffold mobileScreen(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const SizedBox(
              height: 30,
            ),
            ListTile(
              leading: const Icon(Icons.person_outline_sharp),
              title: const Text(' Profile '),
              onTap: () {
                Get.to(() => const NotSignInProfileScreen());
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.feedback_outlined),
              title: const Text(' Help and Feedback '),
              onTap: () {
                Get.to(() => const OrderNowScreen());
              },
            ),
            ListTile(
              leading: const Icon(Icons.login_outlined),
              title: const Text(' Sign In '),
              onTap: () {
                Get.to(() => const LoginScreen());
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: const Icon(Icons.logout_outlined),
              title: const Text(' Logout '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.white,
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                '@Nyasa',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )),
        appBar: AppBar(
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
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 0, top: 7),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                onPressed: () {
                  Get.to(() => const EmptyCartScreen());
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 2, top: 7),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                onPressed: () {
                  Get.to(() => const NotSignInProfileScreen());
                },
                icon: const Icon(
                  Icons.person_outlined,
                ),
              ),
            ),
          ],
        ),
        body: _screens[_selectedIndex]);
  }
}
