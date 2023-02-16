import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pay_now/onboarding_3.dart';

class LetsOnboard extends StatefulWidget {
  const LetsOnboard({super.key});

  @override
  State<LetsOnboard> createState() => _LetsOnboardState();
}

class _LetsOnboardState extends State<LetsOnboard> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF-Pro-Rounded'),
                      '2/3'),
                  InkWell(
                    child: Text(
                        style: TextStyle(
                            color: Color(0xff1A87DD),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF-Pro-Rounded'),
                        'Skip'),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              OnboardingThree()));
                    },
                  ),
                ],
              ),
              SizedBox(height: 120),
              Image.asset('images/illustration2.png'),
              SizedBox(height: 44.58),
              Text('Track your activity',
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
                  'You can track your income, expenses activities and all statistics.'),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/scrollgrey.png'),
                  SizedBox(width: 8),
                  Image.asset('images/scrollblue.png'),
                  SizedBox(width: 8),
                  Image.asset('images/scrollgrey.png'),
                ],
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
