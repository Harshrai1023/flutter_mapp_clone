import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter/material.dart';

class SmallErrorScreen extends StatelessWidget {
  const SmallErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorGrey,
      body: Center(
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg",
                ),
                radius: 25,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your screen is to small",
                style: TextStyle(
                  color: white,
                  fontFamily: "Poppins",
                  fontSize: 22,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
