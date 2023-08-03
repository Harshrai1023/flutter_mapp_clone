import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarCustom extends StatelessWidget {
  final int pageIndex;
  const AppBarCustom({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isSmallScreen = screenWidth < 700;
    return Container(
      color: backgroundColorGrey,
      padding:
          isSmallScreen ? const EdgeInsets.all(10) : const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: const AssetImage("assets/logo.jpg"),
                radius: isSmallScreen ? 20 : 25,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () => context.go('/'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered) &&
                              (pageIndex == 0)) {
                            return const Color.fromARGB(255, 51, 33, 33);
                          }
                          if (states.contains(MaterialState.hovered) &&
                              (pageIndex != 0)) {
                            return const Color.fromARGB(255, 30, 13, 11);
                          }
                          if (pageIndex == 0) {
                            return const Color.fromARGB(255, 40, 40, 40);
                          }
                          return Colors.transparent;
                        },
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Text(
                        "Home",
                        style: TextStyle(
                          fontSize: isSmallScreen ? 16 : 19,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ),
                  isSmallScreen
                      ? const SizedBox(
                          width: 0,
                        )
                      : const SizedBox(
                          width: 20,
                        ),
                  TextButton(
                    onPressed: () => context.go('/courses'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered) &&
                              (pageIndex == 1)) {
                            return const Color.fromARGB(255, 51, 33, 33);
                          }
                          if (states.contains(MaterialState.hovered) &&
                              (pageIndex != 1)) {
                            return const Color.fromARGB(255, 30, 13, 11);
                          }
                          if (pageIndex == 1) {
                            return const Color.fromARGB(255, 40, 40, 40);
                          }
                          return Colors.transparent;
                        },
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Text(
                        "Courses",
                        style: TextStyle(
                          fontSize: isSmallScreen ? 16 : 19,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ),
                  isSmallScreen
                      ? const SizedBox(
                          width: 0,
                        )
                      : const SizedBox(
                          width: 20,
                        ),
                  TextButton(
                    onPressed: () => context.go('/widgets'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered) &&
                              (pageIndex == 2)) {
                            return const Color.fromARGB(255, 51, 33, 33);
                          }
                          if (states.contains(MaterialState.hovered) &&
                              (pageIndex != 2)) {
                            return const Color.fromARGB(255, 30, 13, 11);
                          }
                          if (pageIndex == 2) {
                            return const Color.fromARGB(255, 40, 40, 40);
                          }
                          return Colors.transparent;
                        },
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Text(
                        "Widgets",
                        style: TextStyle(
                          fontSize: isSmallScreen ? 16 : 19,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ),
                  isSmallScreen
                      ? const SizedBox(
                          width: 0,
                        )
                      : const SizedBox(
                          width: 40,
                        )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
