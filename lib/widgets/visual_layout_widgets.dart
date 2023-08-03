import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter/material.dart';

class VisualLayoutWidgets extends StatelessWidget {
  const VisualLayoutWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      width: double.infinity,
      child: Column(
        children: [
          const Text(
            "Visual Layout",
            style: TextStyle(
              color: white,
              fontSize: 25,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "Container",
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
            height: 45,
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
            width: 300,
            color: Colors.grey,
            child: const ListTile(
              title: Text(
                "ListTile",
                style: TextStyle(
                  color: white,
                ),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: white,
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "GridTile",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 300,
            height: 200,
            color: Colors.grey[600],
            child: const GridTile(
              header: GridTileBar(
                backgroundColor: Colors.grey,
                title: Text(
                  "Header",
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Colors.grey,
                title: Text(
                  "Footer",
                ),
              ),
              child: Center(
                child: Text("GridTile", style: TextStyle(color: white)),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Divider",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            width: 150,
            child: Divider(
              thickness: 2,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "VerticalDivider",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            height: 100,
            child: VerticalDivider(
              thickness: 2,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Card",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Card(
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const SizedBox(
              height: 90,
              width: 90,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "Text",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Text",
            style: TextStyle(
              color: Colors.white,
              fontSize: 56,
              fontWeight: FontWeight.w900,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "Image",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Icon(
            Icons.image,
            color: white,
            size: 100,
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "Icon",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Icon(
            Icons.settings,
            color: white,
            size: 100,
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "CircularProgressIndicator",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 50,
            width: 50,
            child: const CircularProgressIndicator(
              color: white,
              strokeWidth: 8,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "LinearProgressIndicator",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            width: 200,
            child: LinearProgressIndicator(
              backgroundColor: backgroundColorBlack,
              valueColor: AlwaysStoppedAnimation(white),
              minHeight: 8,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "Badge",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Badge(
            alignment: AlignmentDirectional.topStart,
            label: Text(
              "45",
              style: TextStyle(
                color: white,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: Icon(
              Icons.notifications_active,
              color: white,
              size: 45,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "Colors",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const Text(
            "DataTable",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            color: Colors.grey,
            child: DataTable(
                border: TableBorder.all(
                  width: 1,
                  color: Colors.black,
                  borderRadius: const BorderRadius.all(Radius.circular(1)),
                ),
                columns: const [
                  // Set the name of the column
                  DataColumn(
                    label: Text(
                      'Title 1',
                      style: TextStyle(color: white),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Title 2',
                      style: TextStyle(color: white),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Title 3',
                      style: TextStyle(color: white),
                    ),
                  ),
                ],
                rows: const [
                  // Set the values to the columns
                  DataRow(cells: [
                    DataCell(Text(
                      "A",
                      style: TextStyle(color: white),
                    )),
                    DataCell(Text(
                      "B",
                      style: TextStyle(color: white),
                    )),
                    DataCell(Text(
                      "C",
                      style: TextStyle(color: white),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text(
                      "D",
                      style: TextStyle(color: white),
                    )),
                    DataCell(Text(
                      "E",
                      style: TextStyle(color: white),
                    )),
                    DataCell(Text(
                      "F",
                      style: TextStyle(color: white),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text(
                      "G",
                      style: TextStyle(color: white),
                    )),
                    DataCell(Text(
                      "H",
                      style: TextStyle(color: white),
                    )),
                    DataCell(Text(
                      "I",
                      style: TextStyle(color: white),
                    )),
                  ]),
                ]),
          )
        ],
      ),
    );
  }
}
