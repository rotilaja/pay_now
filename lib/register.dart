import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pay_now/onboarding_2.dart';
import 'package:pay_now/login.dart';
import 'package:pay_now/register.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _emailKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _reenterPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _passwordKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _reenterPasswordKey = GlobalKey<FormState>();
  bool isVisible = true;
  bool isShowing = true;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/Login Background.png"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 32),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 80),
                      Row(
                        children: [
                          Text(
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color(0xff1A1A1A),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SF-Pro-Rounded'),
                              'Signup and start'),
                        ],
                      ),
                      SizedBox(height: 22),
                      Row(
                        children: [
                          Text(
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff1A1A1A),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SF-Pro-Rounded'),
                              'transfering'),
                        ],
                      ),
                      SizedBox(height: 62),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffF3F4F5)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LetsOnboard()));
                              },
                              child: Text(
                                'Google',
                                style: TextStyle(
                                  color: Color(0xff1A1A1A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF-Pro-Rounded',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffF3F4F5)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LetsOnboard()));
                              },
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                  color: Color(0xff1A1A1A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF-Pro-Rounded',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 93),
                      Row(
                        children: [
                          Text(
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff1A1A1A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF-Pro-Rounded'),
                              'Email'),
                        ],
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        // autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _emailController,

                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Enter your email',
                            fillColor: Color(0xffF8F8F9),
                            border: InputBorder.none,
                            filled: true),
                        onChanged: (value) {
                          // if (_phoneNumberController.text.length == 10) {}
                        },
                        onFieldSubmitted: (value) {
                          print(_emailController.text);
                        },
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Text(
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff1A1A1A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF-Pro-Rounded'),
                              'Password'),
                        ],
                      ),
                      TextFormField(
                        // autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        controller: _passwordController,
                        obscureText: isVisible,
                        validator: (value) {
                          if (_passwordController.text.isEmpty) {
                            return 'enter password';
                          }
                        },

                        decoration: InputDecoration(
                            hintText: 'Enter your password',
                            fillColor: Color(0xffF8F8F9),
                            border: InputBorder.none,
                            filled: true,
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                    print(isVisible);
                                  });
                                },
                                child: isVisible
                                    ? Icon(Icons.visibility,
                                        color:
                                            Color.fromARGB(255, 155, 154, 154))
                                    : Icon(Icons.visibility_off,
                                        color: Color.fromARGB(
                                            255, 155, 154, 154)))),
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Text(
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff1A1A1A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF-Pro-Rounded'),
                              'Re-enter password'),
                        ],
                      ),
                      TextFormField(
                        // autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        controller: _reenterPasswordController,
                        obscureText: isShowing,
                        validator: (value) {
                          if (_reenterPasswordController.text.isEmpty) {
                            return 'Enter your password again';
                          }
                        },

                        decoration: InputDecoration(
                            hintText: 'Enter your password again',
                            fillColor: Color(0xffF8F8F9),
                            border: InputBorder.none,
                            filled: true,
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isShowing = !isShowing;
                                    print(isShowing);
                                  });
                                },
                                child: isVisible
                                    ? Icon(Icons.visibility,
                                        color:
                                            Color.fromARGB(255, 155, 154, 154))
                                    : Icon(Icons.visibility_off,
                                        color: Color.fromARGB(
                                            255, 155, 154, 154)))),
                      ),
                      SizedBox(height: 8),
                      SizedBox(height: 54),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                alignment: Alignment.center,
                              ),
                              child: Text(
                                'Create account',
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF-Pro-Rounded',
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogIn()));
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      InkWell(
                          child: Text(
                              style: TextStyle(
                                  color: Color(0xff1A87DD),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF-Pro-Rounded'),
                              'Already have account?'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LogIn()));
                          }),
                      SizedBox(height: 2),
                    ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
