import 'package:nyasa/constents/consts.dart';

class NfadeinAnimation extends StatelessWidget {
  NfadeinAnimation(
      {super.key,
      required this.durationtimeMs,
      required this.animationPositon,
      required this.child});

  final splashController = Get.put(SplashScreenController());
  final int durationtimeMs;
  final NAnimatePosition? animationPositon;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationtimeMs),
        top: splashController.animate.value
            ? animationPositon!.tofAfter
            : animationPositon!.topBefore,
        left: splashController.animate.value
            ? animationPositon!.leftAfter
            : animationPositon!.leftBefore,
        bottom: splashController.animate.value
            ? animationPositon!.bottomAfter
            : animationPositon!.bottomBefore,
        right: splashController.animate.value
            ? animationPositon!.rightAfter
            : animationPositon!.topBefore,
        child: AnimatedOpacity(
          opacity: splashController.animate.value ? 1 : 0,
          duration: Duration(milliseconds: durationtimeMs),
          child: child,
          //child: const Image(image: AssetImage(welcomeScreen)),
        ),
      ),
    );
  }
}
