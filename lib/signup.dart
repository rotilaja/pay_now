import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pay_now/onboarding_2.dart';
import 'package:pay_now/login.dart';
import 'package:pay_now/register.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Signup Background.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 180),
            Image.asset('images/Logo.png'),
            SizedBox(height: 40),
            Text(
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF-Pro-Rounded'),
                'The Best Way to Transfer Money Safely'),
            SizedBox(height: 150),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      child: Text(
                        'Create new account',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF-Pro-Rounded',
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 5),
            InkWell(
              radius: 10,
              child: Text(
                  style: TextStyle(
                      color: Color(0xff1A87DD),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SF-Pro-Rounded'),
                  'Already have account?'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => LogIn()));
              },
            ),
            // SizedBox(height: 2),
          ],
        ),
      ),
    );
  }
}
