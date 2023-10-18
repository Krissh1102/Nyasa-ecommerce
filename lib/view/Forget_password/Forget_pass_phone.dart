import 'package:nyasa/constents/consts.dart';
import 'package:nyasa/view/Forget_password/Forget_pass_otp.dart';

class ForgetPasswordPhoneScreen extends StatefulWidget {
  const ForgetPasswordPhoneScreen({super.key});

  @override
  State<ForgetPasswordPhoneScreen> createState() {
    return _ForgetPasswordPhoneScreen();
  }
}

class _ForgetPasswordPhoneScreen extends State<ForgetPasswordPhoneScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage('assets/images/phone_forget_pass.png'),
                height: size.height * 0.5,
              ),
              const Text(
                'Forget Password',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Please enter your phone number for OTP',
                style: TextStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone_in_talk_outlined),
                        label: Text('Phone Number'),
                      ),
                      keyboardType: TextInputType.number,
                      autofillHints: const [AutofillHints.telephoneNumber],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const OTPscreen());
                            },
                            child: const Text('Next')))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
