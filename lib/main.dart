//import 'package:firebase_core/firebase_core.dart';
//import 'package:nyasa/Repository/auth_repository/auth_repository.dart';

import 'package:nyasa/constents/consts.dart';

import 'package:nyasa/view/UserScreen/UserScreen.dart';

void main() async {
  /*
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBsBxv19eFsr7dwwok5XlYlj3VZG1tHsO0",
          appId: "1:64331748457:web:89bfc87f8e6f6614e77ef8",
          messagingSenderId: "64331748457",
          projectId: "nyasa-web"));
          */

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nyasa',
      theme: Napptheme.lightTheme,
      darkTheme: Napptheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _nagivatiehome();
  }

  _nagivatiehome() async {
    await Future.delayed(const Duration(microseconds: 15000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const UserScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      padding: const EdgeInsets.all(defaultSize),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image(image: AssetImage('assets/images/NYASAedited.png'))],
      ),
    )));
  }
}
