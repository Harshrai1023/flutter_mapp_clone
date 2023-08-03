import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter_mapp_clone/widgets/app_bar_custom.dart';
import 'package:flutter_mapp_clone/widgets/footer_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    const int pageIndex = 0;
    return Scaffold(
      backgroundColor: backgroundColorGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarCustom(
                pageIndex: pageIndex,
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.red,
                    padding: const EdgeInsets.all(20),
                    child: Flex(
                      direction:
                          screenWidth > 780 ? Axis.horizontal : Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          // color: Colors.red,
                          height: 250,
                          margin: const EdgeInsets.all(10),
                          child: Card(
                            elevation: 10,
                            child: Image.asset(
                              "assets/course1.png",
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Flutter Roadmap",
                                style: TextStyle(
                                  color: white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w900,
                                  fontSize: 46,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                "Step by step PDF Guide to learn Flutter",
                                style: TextStyle(
                                  color: white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 26,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                "Available at: Gumroad.com",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const SizedBox(
                                width: 300,
                                child: TextField(
                                  style: TextStyle(color: white),
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 50,
                                width: 175,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red.shade700,
                                      foregroundColor: white,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.all(Radius.zero))),
                                  child: const Text(
                                    "GET FOR FREE",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Join 2,000+ Students",
                    style: TextStyle(
                      color: white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "The Best Way To Learn Flutter!",
                    style: TextStyle(
                      color: white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      fontSize: 26,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 175,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: const Text(
                        "ONLINE COURSES",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {}, // icon of the button
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(18),
                          backgroundColor: Colors.grey.shade900,
                        ),
                        child: const FaIcon(
                          FontAwesomeIcons.instagram,
                          color: white,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {}, // icon of the button
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(18),
                          backgroundColor: Colors.grey.shade900,
                        ),
                        child: const FaIcon(
                          FontAwesomeIcons.twitter,
                          color: white,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {}, // icon of the button
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(18),
                          backgroundColor: Colors.grey.shade900,
                        ),
                        child: const FaIcon(
                          FontAwesomeIcons.youtube,
                          color: white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const FooterCustom(
                pageIndex: pageIndex,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
