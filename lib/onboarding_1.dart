import 'package:flutter/material.dart';

import 'onboarding_2.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
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
                      '1/3'),
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
                          builder: (BuildContext context) => LetsOnboard()));
                    },
                  ),
                ],
              ),
              SizedBox(height: 120),
              Image.asset('images/illustration1.png'),
              SizedBox(height: 44.58),
              Text('Add all accounts & manage',
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
                  'You can add all accounts in one place and use it to send and request.'),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/scrollblue.png'),
                  SizedBox(width: 8),
                  Image.asset('images/scrollgrey.png'),
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
