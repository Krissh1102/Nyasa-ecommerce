//import 'package:nyasa_new/Repository/auth_repository/auth_repository.dart';
import 'package:nyasa/constents/consts.dart';
import 'package:nyasa/view/Login_Screen/Forget_pass_button.dart';
import 'package:nyasa/view/New_SignUp_Screen/SignUp.dart';
//import 'package:nyasa/view/New_SignUp_Screen/SignUpController.dart';
//import 'package:nyasa_new/view/UserScreen/UserScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();

    _isObscure = true;
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();
  // ignore: unused_field
  String _emailAddress = '';
  // ignore: unused_field
  String _password = '';
  final _formkey = GlobalKey<FormState>();
  final FocusNode _passwordFocusNode = FocusNode();
  //final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  /*void _submitForm() async {
    
    final isValid = _formkey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formkey.currentState!.save();

      await _auth
          .signInWithEmailAndPassword(
              email: _emailAddress.toLowerCase().trim(),
              password: _password.trim())
          .then((value) =>
              Navigator.canPop(context) ? Navigator.pop(context) : null);
    }
  }*/

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(SignUpController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        child: Container(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//section 1----------------------------------------------------------------------------------------------------
              Image(
                  image: const AssetImage(loginScreenImage),
                  height: size.height * 0.2),
              const Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Loading to the world of Silver..',
                style: TextStyle(),
              ),
//SECTION 2-------------------------------------------------------------------------------------------------------
              Form(
                  key: _formkey,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_outlined),
                              labelText: 'E-mail',
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty || !value.contains('@')) {
                                return 'Please enter a Vaild Email';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            autofillHints: const [AutofillHints.email],
                            onEditingComplete: () => FocusScope.of(context)
                                .requestFocus(_passwordFocusNode),
                            onSaved: (value) {
                              _emailAddress = value!;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon:
                                  const Icon(Icons.lock_outline_rounded),
                              labelText: 'Password',
                              border: const OutlineInputBorder(),
                              suffixIcon: IconButton(
                                  padding: const EdgeInsetsDirectional.only(
                                      end: 12.0),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                  icon: _isObscure
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off)),
                            ),
                            obscureText: _isObscure,
                            validator: (value) {
                              if (value!.isEmpty || value.length >= 4) {
                                return 'Please enter a Password that is 4 or more characters long ';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              _password = value!;
                            },
                          ),
                          const SizedBox(height: 10),

                          TextButton(
                              onPressed: () {
                                scaffoldKey.currentState!
                                    .showBottomSheet((context) {
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100));
                                  return const ForgetPassPoopUp();
                                });
                              },
                              child: const Text(
                                'Forget Password?',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 143, 176, 247)),
                              )),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  //_submitForm();
                                  if (_formkey.currentState!.validate()) {
                                    /*
                                    SignUpController.instance.registerUser(
                                        controller.email.text.trim(),
                                        controller.password.text.trim());
                                        */
                                  }
                                },
                                child: const Text('Login')),
                          ),
                          const SizedBox(height: 10),
//SECTION 3--------------------------------------------------------------------------------------------------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('OR'),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: double.infinity,
                                child: OutlinedButton.icon(
                                  onPressed: () async {
                                    /*
                                    await signInWithGoogle().then((result) {
                                      print(result);
                                      if (result != null) {
                                        Navigator.of(context).pop();
                                        Navigator.of(context)
                                            .pushReplacement(MaterialPageRoute(
                                          builder: (context) =>
                                              const UserScreen(),
                                        ));
                                      }
                                    }).catchError((error) {
                                      print('Registration Error: $error');
                                    });
                                    */
                                  },
                                  label: const Text('Sign in with Google'),
                                  icon: const Image(
                                    image: AssetImage(googleIcon),
                                    width: 20,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.to(() => const SignUpScreen());
                                },
                                child: const Text.rich(
                                  TextSpan(
                                    text: 'Don\'t have an Account?',
                                    style: TextStyle(color: Colors.grey),
                                    children: [
                                      TextSpan(
                                        text: ' Sign Up',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
