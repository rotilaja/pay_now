import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pay_now/homepage_2.dart';
import 'package:pay_now/onboarding_2.dart';
import 'package:pay_now/register.dart';

class HomePageOne extends StatefulWidget {
  const HomePageOne({super.key});

  @override
  State<HomePageOne> createState() => _HomePageOneState();
}

class _HomePageOneState extends State<HomePageOne> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _emailKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _passwordKey = GlobalKey<FormState>();
  bool isVisible = true;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 395,
              height: 262,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Homepage Background.png"),
                    fit: BoxFit.cover),
              ),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(height: 63),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SF-Pro-Rounded'),
                          'Dashoboard'),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        backgroundImage:
                            AssetImage('images/Profile Picture.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 37),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          style: TextStyle(
                              color: Color.fromARGB(255, 235, 232, 232),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SF-Pro-Rounded'),
                          'Hi, Amanda!'),
                      SizedBox(height: 8),
                      Text(
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SF-Pro-Rounded'),
                          'Total Balance'),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'SF-Pro-Rounded'),
                              '\$124.57'),
                          Image(
                              image:
                                  AssetImage('images/notifications _icon.png')),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 49,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF8BB18),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('images/Send_Path.png')),
                          SizedBox(width: 8),
                          Text(
                              style: TextStyle(
                                  color: Color(0xff1A1A1A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF-Pro-Rounded'),
                              'Send Money'),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 150,
                      height: 49,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff1A87DD),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('images/Request_Path.png')),
                          SizedBox(width: 8),
                          Text(
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF-Pro-Rounded'),
                              'Request Money'),
                        ],
                      ),
                    ),
                  ]),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        style: TextStyle(
                            color: Color(0xff1a1a1a),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'SF-Pro-Rounded'),
                        'Last Transactions'),
                    InkWell(
                        child: Text(
                            style: TextStyle(
                                color: Color(0xff3491DB),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'SF-Pro-Rounded'),
                            'View All'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePageTwo()));
                        }),
                  ]),
            ),
            SizedBox(height: 16),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Row(
            //             children: [
            //               Stack(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.white,
            //                     radius: 20,
            //                     backgroundImage: AssetImage('images/yara.png'),
            //                   ),
            //                   Positioned(
            //                     top: 25,
            //                     left: 25,
            //                     child: CircleAvatar(
            //                       backgroundColor: Colors.white,
            //                       radius: 10,
            //                       backgroundImage:
            //                           AssetImage('images/send_icon.png'),
            //                     ),
            //                   ),
            //                 ],
            //                 fit: StackFit.loose,
            //                 clipBehavior: Clip.none,
            //               ),
            //               SizedBox(width: 17),
            //               Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                       style: TextStyle(
            //                           color: Color(0xff1a1a1a),
            //                           fontSize: 14,
            //                           fontWeight: FontWeight.w400,
            //                           fontFamily: 'SF-Pro-Rounded'),
            //                       'Yara Khalil'),
            //                   SizedBox(height: 1),
            //                   Text(
            //                       style: TextStyle(
            //                           color: Color.fromARGB(255, 114, 114, 114),
            //                           fontSize: 12,
            //                           fontWeight: FontWeight.w400,
            //                           fontFamily: 'SF-Pro-Rounded'),
            //                       'Oct 14, 10:24 AM'),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //       Text(
            //           style: TextStyle(
            //               color: Color(0xff000000),
            //               fontSize: 16,
            //               fontWeight: FontWeight.w600,
            //               fontFamily: 'SF-Pro-Rounded'),
            //           '-\$15.00'),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 25),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Row(
            //             children: [
            //               Stack(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.white,
            //                     radius: 20,
            //                     backgroundImage: AssetImage('images/sara.png'),
            //                   ),
            //                   Positioned(
            //                     top: 25,
            //                     left: 25,
            //                     child: CircleAvatar(
            //                       backgroundColor: Colors.white,
            //                       radius: 10,
            //                       backgroundImage:
            //                           AssetImage('images/request_icon.png'),
            //                     ),
            //                   ),
            //                 ],
            //                 fit: StackFit.loose,
            //                 clipBehavior: Clip.none,
            //               ),
            //               SizedBox(width: 17),
            //               Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                       style: TextStyle(
            //                           color: Color(0xff1a1a1a),
            //                           fontSize: 14,
            //                           fontWeight: FontWeight.w400,
            //                           fontFamily: 'SF-Pro-Rounded'),
            //                       'Sara Ibrahim'),
            //                   SizedBox(height: 1),
            //                   Text(
            //                       style: TextStyle(
            //                           color: Color.fromARGB(255, 114, 114, 114),
            //                           fontSize: 12,
            //                           fontWeight: FontWeight.w400,
            //                           fontFamily: 'SF-Pro-Rounded'),
            //                       'Oct 14, 10:24 AM'),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //       Text(
            //           style: TextStyle(
            //               color: Color(0xff000000),
            //               fontSize: 16,
            //               fontWeight: FontWeight.w600,
            //               fontFamily: 'SF-Pro-Rounded'),
            //           '+\$20.50'),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 25),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Row(
            //             children: [
            //               Stack(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.white,
            //                     radius: 20,
            //                     backgroundImage: AssetImage('images/ahmad.png'),
            //                   ),
            //                   Positioned(
            //                     top: 25,
            //                     left: 25,
            //                     child: CircleAvatar(
            //                       backgroundColor: Colors.white,
            //                       radius: 10,
            //                       backgroundImage:
            //                           AssetImage('images/request_icon.png'),
            //                     ),
            //                   ),
            //                 ],
            //                 fit: StackFit.loose,
            //                 clipBehavior: Clip.none,
            //               ),
            //               SizedBox(width: 17),
            //               Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                       style: TextStyle(
            //                           color: Color(0xff1a1a1a),
            //                           fontSize: 14,
            //                           fontWeight: FontWeight.w400,
            //                           fontFamily: 'SF-Pro-Rounded'),
            //                       'Ahmad Ibrahim'),
            //                   SizedBox(height: 1),
            //                   Text(
            //                       style: TextStyle(
            //                           color: Color.fromARGB(255, 114, 114, 114),
            //                           fontSize: 12,
            //                           fontWeight: FontWeight.w400,
            //                           fontFamily: 'SF-Pro-Rounded'),
            //                       'Oct 11, 01:19 AM'),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //       Text(
            //           style: TextStyle(
            //               color: Color(0xff000000),
            //               fontSize: 16,
            //               fontWeight: FontWeight.w600,
            //               fontFamily: 'SF-Pro-Rounded'),
            //           '+\$12.40'),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 25),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Row(
            //             children: [
            //               Stack(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.white,
            //                     radius: 20,
            //                     backgroundImage: AssetImage('images/reem.png'),
            //                   ),
            //                   Positioned(
            //                     top: 25,
            //                     left: 25,
            //                     child: CircleAvatar(
            //                       backgroundColor: Colors.white,
            //                       radius: 10,
            //                       backgroundImage:
            //                           AssetImage('images/send_icon.png'),
            //                     ),
            //                   ),
            //                 ],
            //                 fit: StackFit.loose,
            //                 clipBehavior: Clip.none,
            //               ),
            //               SizedBox(width: 17),
            //               Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                       style: TextStyle(
            //                           color: Color(0xff1a1a1a),
            //                           fontSize: 14,
            //                           fontWeight: FontWeight.w400,
            //                           fontFamily: 'SF-Pro-Rounded'),
            //                       'Reem Khaled'),
            //                   SizedBox(height: 1),
            //                   Text(
            //                       style: TextStyle(
            //                           color: Color.fromARGB(255, 114, 114, 114),
            //                           fontSize: 12,
            //                           fontWeight: FontWeight.w400,
            //                           fontFamily: 'SF-Pro-Rounded'),
            //                       'Oct 07, 09:10 PM'),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //       Text(
            //           style: TextStyle(
            //               color: Color(0xff000000),
            //               fontSize: 16,
            //               fontWeight: FontWeight.w600,
            //               fontFamily: 'SF-Pro-Rounded'),
            //           '-\$21.30'),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 25),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Row(
            //             children: [
            //               Stack(
            //                 children: [
            //                   CircleAvatar(
            //                     backgroundColor: Colors.white,
            //                     radius: 20,
            //                     backgroundImage: AssetImage('images/hiba.png'),
            //                   ),
            //                   Positioned(
            //                     top: 25,
            //                     left: 25,
            //                     child: CircleAvatar(
            //                       backgroundColor: Colors.white,
            //                       radius: 10,
            //                       backgroundImage:
            //                           AssetImage('images/request_icon.png'),
            //                     ),
            //                   ),
            //                 ],
            //                 fit: StackFit.loose,
            //                 clipBehavior: Clip.none,
            //               ),
            //               SizedBox(width: 17),
            //               Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                       style: TextStyle(
            //                           color: Color(0xff1a1a1a),
            //                           fontSize: 14,
            //                           fontWeight: FontWeight.w400,
            //                           fontFamily: 'SF-Pro-Rounded'),
            //                       'Hiba Saleh'),
            //                   SizedBox(height: 1),
            //                   Text(
            //                       style: TextStyle(
            //                           color: Color.fromARGB(255, 114, 114, 114),
            //                           fontSize: 12,
            //                           fontWeight: FontWeight.w400,
            //                           fontFamily: 'SF-Pro-Rounded'),
            //                       'Oct 04, 05:45 AM'),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //       Text(
            //           style: TextStyle(
            //               color: Color(0xff000000),
            //               fontSize: 16,
            //               fontWeight: FontWeight.w600,
            //               fontFamily: 'SF-Pro-Rounded'),
            //           '+\$09.00'),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 243, 242, 242),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey[400],
            iconSize: 40,
            selectedFontSize: 12,
            currentIndex: currentIndex,
            onTap: (index) => currentIndex = index,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.arrow_swap,
                ),
                label: 'Transactions',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.group_outlined,
                ),
                label: 'Contacts',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.user),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
