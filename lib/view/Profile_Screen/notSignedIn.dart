import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:nyasa/view/New_SignUp_Screen/SignUp.dart';

class NotSignInProfileScreen extends StatelessWidget {
  const NotSignInProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'You are not Loged In :(',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Login in to view your profile',
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
                      Get.to(() => const SignUpScreen());
                    },
                    child: const Text(
                      'LogIn',
                      style: TextStyle(fontSize: 15),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
