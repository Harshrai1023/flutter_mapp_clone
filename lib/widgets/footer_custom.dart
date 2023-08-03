import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FooterCustom extends StatelessWidget {
  final int pageIndex;

  const FooterCustom({super.key, required this.pageIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColorGrey,
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          const Text(
            "Copyright © 2023 Flutter Mapp - All Rights Reserved",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: white,
              fontFamily: "Poppins",
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "This website was entirely build with Flutter",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 19,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
              const SizedBox(
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "Courses",
                    style: TextStyle(
                      fontSize: 19,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
              const SizedBox(
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "Widgets",
                    style: TextStyle(
                      fontSize: 19,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
