import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pay_now/onboarding_2.dart';
import 'package:pay_now/signup.dart';

class OnboardingThree extends StatefulWidget {
  const OnboardingThree({super.key});

  @override
  State<OnboardingThree> createState() => _OnboardingThreeState();
}

class _OnboardingThreeState extends State<OnboardingThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF-Pro-Rounded'),
                      '3/3'),
                ],
              ),
              SizedBox(height: 120),
              Image.asset('images/Wallet-rafiki.png'),
              SizedBox(height: 44.58),
              Text('Send & request payments',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Rounded',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    // color: Color(0x1A1A1A),
                  )),
              SizedBox(height: 8),
              Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      // color: Color(0x1A1A1A),
                      fontFamily: 'SF-Pro-Rounded'),
                  'You can send or recieve any payments from yous accounts.'),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/scrollgrey.png'),
                  SizedBox(width: 8),
                  Image.asset('images/scrollgrey.png'),
                  SizedBox(width: 8),
                  Image.asset('images/scrollblue.png'),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF-Pro-Rounded',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
