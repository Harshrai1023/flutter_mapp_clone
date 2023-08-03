import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {
  const LayoutWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Layout",
            style: TextStyle(
              color: white,
              fontSize: 25,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "SizedBox",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Column",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Row",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Stack",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 130,
            width: 130,
            child: Stack(
              children: [
                Positioned(
                  //<-- SEE HERE
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey.shade600,
                  ),
                ),
                Positioned(
                  //<-- SEE HERE
                  left: 20,
                  top: 20,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey.shade400.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Center",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 108, 108, 108),
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.grey,
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Padding",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 108, 108, 108),
              ),
              Container(
                height: 80,
                width: 80,
                color: const Color.fromARGB(255, 50, 50, 50),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "SingleChildScrollView",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              height: 200,
              width: 300,
              color: Colors.grey,
              child: ListView.builder(
                itemCount: 11,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    alignment: Alignment.center,
                    child: Text(
                      "Widget ${index + 1}",
                      style: const TextStyle(
                        color: white,
                        fontSize: 16,
                      ),
                    ),
                  );
                },
              )),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "ListView",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              height: 200,
              width: 300,
              color: Colors.grey,
              child: ListView.builder(
                itemCount: 11,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      "ListTile n.$index",
                      style: const TextStyle(
                        color: white,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: white,
                    ),
                  );
                },
              )),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "GridView",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              height: 200,
              width: 300,
              color: Colors.grey,
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 2.0),
                itemBuilder: (BuildContext context, int index) {
                  return const Icon(
                    Icons.photo,
                    size: 50,
                    color: white,
                  );
                },
              )),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
