import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommunityWidget extends StatelessWidget {
  const CommunityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: FittedBox(
              child: Text(
                "Help the community",
                style: TextStyle(
                  color: white,
                  fontSize: 46,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: FittedBox(
              child: Text(
                "Share this on social media",
                style: TextStyle(
                  color: white,
                  fontSize: 26,
                  fontFamily: "Poppins",
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Thank you!",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Clipboard.setData(
                  const ClipboardData(text: "https://fluttermapp.com/widgets"),
                );
                const snackBar = SnackBar(
                  content: Text(
                    'Copied Successfully',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  backgroundColor: Colors.red,
                  behavior: SnackBarBehavior.floating,
                  width: 300,
                  showCloseIcon: true,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  )),
              child: const Text(
                "Copy URL",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
