import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pay_now/homepage_1.dart';
import 'package:pay_now/onboarding_2.dart';
import 'package:pay_now/register.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _emailKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _passwordKey = GlobalKey<FormState>();
  bool isVisible = true;
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
            // width: double.infinity,
            // // height: double.infinity,
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
                              'Login and start'),
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
                                        builder: (context) => HomePageOne()));
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
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Color(0xff1A87DD),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF-Pro-Rounded'),
                              'Forget password?'),
                        ],
                      ),
                      SizedBox(height: 92),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                alignment: Alignment.center,
                              ),
                              child: Text(
                                'Login',
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
                                        builder: (context) => HomePageOne()));
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
                              'Create new account'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
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
