import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter/material.dart';

class ShowWidgets extends StatelessWidget {
  const ShowWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text("Show",
              style: TextStyle(
                color: white,
                fontFamily: "Poppins",
                fontSize: 24,
              )),
          const SizedBox(
            height: 40,
          ),
          const Text("showDialog",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 55,
            color: Colors.grey[400],
            child: TextButton.icon(
              label: const Text(
                "AlertDialog",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              // <-- TextButton
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text(
                      "AlertDialog",
                      style: TextStyle(
                        color: white,
                      ),
                    ),
                    content: const Text(
                      "Description",
                      style: TextStyle(
                        color: white,
                      ),
                    ),
                    actions: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: white,
                        ),
                      ),
                    ],
                    backgroundColor: const Color(0xff2a1817),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                );
              },
              icon: const Icon(
                Icons.chat_outlined,
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("showModalBottomSheet",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 55,
            color: Colors.grey[400],
            child: TextButton.icon(
              label: const Text(
                "BottomSheet",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              // <-- TextButton
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: const Color(0xff1b1312),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "BottomSheet",
                            style: TextStyle(color: white, fontSize: 15),
                          ),
                          IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const Icon(
                                Icons.close,
                                color: white,
                              ))
                        ],
                      );
                    });
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("showDatePicker",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 55,
            color: Colors.grey[400],
            child: TextButton.icon(
              label: const Text(
                "DatePicker",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // <-- TextButton
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1950),
                  lastDate: DateTime(2100),
                  builder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: const ColorScheme.light(
                          primary: Color(0xff121212),
                          onSurface: white,
                        ),
                        dialogBackgroundColor: const Color(0xff2a1817),
                        textButtonTheme: TextButtonThemeData(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.red, // button text color
                          ),
                        ),
                      ),
                      child: child!,
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.calendar_month_rounded,
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("showDateRangePicker",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 55,
            color: Colors.grey[400],
            child: TextButton.icon(
              label: const Text(
                "DateRangePicker",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // <-- TextButton
              onPressed: () {
                showDateRangePicker(
                  context: context,
                  firstDate: DateTime(1950),
                  lastDate: DateTime(2100),
                  builder: (context, child) {
                    return Theme(
                      data: ThemeData(
                        //Header background color
                        primaryColor: const Color(0xff211413),
                        appBarTheme:
                            const AppBarTheme(color: Color(0xff211413)),
                        //Background color
                        scaffoldBackgroundColor: const Color(0xff161616),
                        //Divider color
                        dividerColor: white,
                        //Non selected days of the month color
                        textTheme: const TextTheme(
                          bodyMedium: TextStyle(color: white),
                        ),
                        colorScheme: ColorScheme.fromSwatch().copyWith(
                          //Selected dates background color
                          primary: Colors.red,
                          //Month title and week days color
                          onSurface: white,
                          //Header elements and selected dates text color
                          //onPrimary: Colors.white,
                        ),
                      ),
                      child: child!,
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.calendar_month_outlined,
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("showTimePicker",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 55,
            color: Colors.grey[400],
            child: TextButton.icon(
              label: const Text(
                "TimePicker",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // <-- TextButton
              onPressed: () => showTimePicker(
                  context: context, initialTime: TimeOfDay.now()),
              icon: const Icon(
                Icons.timer_outlined,
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("showLicensePage",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 55,
            color: Colors.grey[400],
            child: TextButton.icon(
              label: const Text(
                "LicensePage",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // <-- TextButton
              onPressed: () => showLicensePage(
                context: context,
                applicationName: "Flutter Mapp",
              ),
              icon: const Icon(
                Icons.list,
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("showSearch",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 55,
            color: Colors.grey[400],
            child: TextButton.icon(
              label: const Text(
                "Search",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // <-- TextButton
              onPressed: () => showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              ),
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("showMaterialBanner",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 55,
            color: Colors.grey[400],
            child: TextButton.icon(
              label: const Text(
                "MaterialBanner",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // <-- TextButton
              onPressed: () {
                final materialBanner = MaterialBanner(
                  backgroundColor: Colors.red,
                  dividerColor: white,
                  actions: [
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: white,
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                    )
                  ],
                  content: const Center(
                      child: Text(
                    "MaterialBanner",
                    style: TextStyle(color: white, fontSize: 15),
                  )),
                );
                ScaffoldMessenger.of(context)
                    .showMaterialBanner(materialBanner);
              },
              icon: const Icon(
                Icons.picture_in_picture,
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("showSnackBar",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 55,
            color: Colors.grey[400],
            child: TextButton.icon(
              label: const Text(
                "SnackBar",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // <-- TextButton
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text(
                    'SnackBar',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  backgroundColor: Colors.red,
                  behavior: SnackBarBehavior.floating,
                  width: 300,
                  showCloseIcon: true,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: const Icon(
                Icons.picture_in_picture_alt,
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];
  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF212121),
        foregroundColor: Colors.grey,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        // Remove the underline

        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),

        // Change the hint text color
        hintStyle:
            TextStyle(color: Colors.grey), // Replace with your desired color
      ),
    );
  }

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
// last overwrite to show the
    );
  }
}
