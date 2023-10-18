import 'package:nyasa/constents/consts.dart';
import 'package:nyasa/view/Login_Screen/login_screen.dart';
import 'package:nyasa/view/New_SignUp_Screen/SignUp.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashController = Get.put(SplashScreenController());
    splashController.startAnimation();
    var mediaQuery = MediaQuery.of(context);
    var hight = mediaQuery.size.height;

    return Scaffold(
      body: Stack(children: [
        NfadeinAnimation(
            durationtimeMs: 1600,
            animationPositon: NAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                tofAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
                leftAfter: 0,
                leftBefore: 0),
            child: Container(
                padding: const EdgeInsets.all(defaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Image(
                        image: const AssetImage(welcomeScreen),
                        height: hight * 0.6),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Get the Silver that you deserve...',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Just one click away'),
                    const SizedBox(
                      height: 105,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: OutlinedButton(
                          onPressed: () {
                            Get.to(() => const LoginScreen());
                          },
                          child: const Text('Login'),
                        )),
                        const SizedBox(width: 10),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  Get.to(() => const SignUpScreen());
                                },
                                child: const Text('Sign up')))
                      ],
                    )
                  ],
                ))),
      ]),
    );
  }
}
