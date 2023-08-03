import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter_mapp_clone/widgets/app_bar_custom.dart';
import 'package:flutter_mapp_clone/widgets/footer_custom.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const int pageIndex = 1;
    return Scaffold(
      backgroundColor: backgroundColorGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarCustom(
                pageIndex: pageIndex,
              ),
              Container(
                width: double.infinity,
                color: backgroundColorGrey,
                child: Column(
                  children: [
                    const Text(
                      "Learn Flutter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 46,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const Text(
                      "30 days satisfaction gaurantee or 100% money back",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: white,
                        fontFamily: "Poppins",
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Just Email us at info@fluttermapp.com",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Poppins",
                        fontSize: 14,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Card(
                            child: Column(
                              children: [
                                Container(
                                  color: const Color.fromARGB(255, 45, 45, 45),
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "2,000+ copy sold",
                                        style: TextStyle(
                                          color: white,
                                          fontSize: 17,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 6.0,
                                          vertical: 2.0,
                                        ),
                                        color: Colors.red.shade700,
                                        child: const Text(
                                          "50% off",
                                          style: TextStyle(
                                            color: white,
                                            fontSize: 17,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: backgroundColorBlack,
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child:
                                              Image.asset("assets/course2.png"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Flutter For Beginners",
                                                style: TextStyle(
                                                  color: white,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 46,
                                                ),
                                              ),
                                              const Text(
                                                "Simplest and Fastest way to build Flutter apps",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: "Poppins",
                                                  fontSize: 14,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              RichText(
                                                text: const TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: '\$145.95',
                                                        style: TextStyle(
                                                          fontFamily: "Poppins",
                                                          color: Colors.grey,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          decorationColor:
                                                              white,
                                                          fontSize: 24,
                                                        )),
                                                    TextSpan(
                                                      text: ' \$74.95',
                                                      style: TextStyle(
                                                        color: white,
                                                        fontSize: 24,
                                                      ),
                                                    )
                                                  ],
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
                                                      backgroundColor:
                                                          Colors.red.shade700,
                                                      foregroundColor: white,
                                                      shape: const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .zero))),
                                                  child: const Text(
                                                    "GET THIS COURSE",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Card(
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  color: const Color.fromARGB(255, 45, 45, 45),
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Text(
                                    "300+ copy sold",
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 17,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: backgroundColorBlack,
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child:
                                              Image.asset("assets/course3.png"),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Flutter Pro",
                                                style: TextStyle(
                                                  color: white,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 46,
                                                ),
                                              ),
                                              const Text(
                                                "Clean Architectur & More",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: "Poppins",
                                                  fontSize: 14,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                ' \$149.95',
                                                style: TextStyle(
                                                  color: white,
                                                  fontSize: 24,
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
                                                      backgroundColor:
                                                          Colors.red.shade700,
                                                      foregroundColor: white,
                                                      shape: const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .zero))),
                                                  child: const Text(
                                                    "GET THIS COURSE",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          const Text(
                            "Already a student?",
                            style: TextStyle(
                              color: white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            width: 125,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0))),
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
