import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter/material.dart';

class UserInputWidgets extends StatefulWidget {
  const UserInputWidgets({super.key});

  @override
  State<UserInputWidgets> createState() => _UserInputWidgetsState();
}

class _UserInputWidgetsState extends State<UserInputWidgets> {
  bool isVisible = true;
  bool isChecked = false;
  bool isSwitchedOn = false;
  bool isSelected = false;
  bool isChipSelected = false;
  bool isChoiceChipSelected = false;
  double sliderValue = 0;
  int? selectedRadio;
  final List<bool> _selections = List.generate(5, (_) => false);
  final List<int> _values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        children: [
          const Text(
            "User Input",
            style: TextStyle(
              color: white,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Buttons",
            style: TextStyle(
              color: Colors.grey,
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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero))),
              child: const Text(
                "Button",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "IconButton",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          IconButton(
            onPressed: () {},
            iconSize: 100,
            icon: const Icon(
              Icons.fingerprint,
              color: white,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "GestureDector",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              const snackBar = SnackBar(
                content: Text(
                  'Clicked',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
                width: 300,
                showCloseIcon: true,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage("logo.jpg"),
              radius: 50,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Dismissible",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.grey.shade600,
            child: ListView.builder(
                itemCount: _values.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key('item ${_values[index]}'),
                    onDismissed: (DismissDirection direction) {
                      setState(() {
                        _values.removeAt(index);
                      });
                    },
                    background: Container(
                      color: Colors.red.shade400,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Delete',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                )),
                            Icon(
                              Icons.delete,
                              color: Colors.white.withOpacity(.5),
                            ),
                          ],
                        ),
                      ),
                    ),
                    child: ListTile(
                      trailing: const Icon(
                        Icons.swipe,
                        color: Colors.grey,
                      ),
                      title: Text(
                        "Dismissible n.${_values[index].toString()}",
                        style: const TextStyle(fontFamily: "Poppins"),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Checkbox",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Checkbox(
            value: isChecked,
            activeColor: Colors.white,
            checkColor: Colors.black,
            fillColor: MaterialStateColor.resolveWith((states) => white),
            onChanged: (value) {
              setState(() {
                isChecked = !isChecked;
              });
            },
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Switch",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Switch(
            value: isSwitchedOn,
            onChanged: (bool newValue) {
              setState(() {
                isSwitchedOn = newValue;
              });
            },
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "TextField",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            color: Colors.grey.shade600,
            child: const TextField(
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: white, width: 2),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                )),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "DropdownMenu",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const DropdownMenu(
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Colors.grey,
                // contentPadding: EdgeInsets.symmetric(vertical: 5.0),
              ),
              textStyle: TextStyle(fontFamily: "Poppins"),
              initialSelection: 0,
              dropdownMenuEntries: [
                DropdownMenuEntry(label: 'Inbox', value: 0),
                DropdownMenuEntry(label: 'Sent Items', value: 1),
                DropdownMenuEntry(label: 'Drafts', value: 2),
              ]),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "RadioButton",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                  value: 1,
                  groupValue: selectedRadio,
                  fillColor: const MaterialStatePropertyAll(white),
                  hoverColor: Colors.grey.shade900,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value;
                    });
                    print(value); //selected value
                  }),
              Radio(
                  value: 2,
                  groupValue: selectedRadio,
                  fillColor: const MaterialStatePropertyAll(white),
                  hoverColor: Colors.grey.shade900,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value;
                    });
                    print(value); //selected value
                  }),
              Radio(
                  value: 3,
                  groupValue: selectedRadio,
                  fillColor: const MaterialStatePropertyAll(white),
                  hoverColor: Colors.grey.shade900,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value;
                    });
                    print(value); //selected value
                  }),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Slider",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          SizedBox(
            width: 300,
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                // trackHeight: 10.0,
                // trackShape: const RoundedRectSliderTrackShape(),
                // activeTrackColor: Colors.purple.shade800,
                // inactiveTrackColor: Colors.purple.shade100,
                // thumbShape: const RoundSliderThumbShape(
                //   enabledThumbRadius: 14.0,
                //   pressedElevation: 8.0,
                // ),
                // thumbColor: Colors.pinkAccent,
                // overlayColor: Colors.pink.withOpacity(0.2),
                // overlayShape: const RoundSliderOverlayShape(overlayRadius: 32.0),
                // tickMarkShape: const RoundSliderTickMarkShape(),
                // activeTickMarkColor: Colors.pinkAccent,
                // inactiveTickMarkColor: Colors.white,
                valueIndicatorShape: const DropSliderValueIndicatorShape(),
                valueIndicatorColor: Colors.white,
                valueIndicatorTextStyle: const TextStyle(
                  color: Colors.black,
                ),
              ),
              child: Slider(
                min: 0.0,
                max: 10.0,
                value: sliderValue,
                divisions: 10,
                label: '${sliderValue.round()}',
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Chip",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Chip(
            label: const Text(
              'Chip',
              style: TextStyle(
                fontFamily: "Poppins",
              ),
            ),
            onDeleted: () {
              setState(() {
                isChipSelected = !isChipSelected;
              });
            },
            backgroundColor: isChipSelected ? Colors.red : backgroundColorBlack,
            deleteIconColor: white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            side: BorderSide(
              color: isChoiceChipSelected
                  ? backgroundColorBlack
                  : white, // Black color for the border
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "ChoiceChip",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ChoiceChip(
            label: const Text(
              'ChoiceChip',
              style: TextStyle(
                fontFamily: "Poppins",
              ),
            ),
            selected: isChoiceChipSelected,
            onSelected: (value) {
              setState(() {
                isChoiceChipSelected = value;
              });
            },
            selectedColor: Colors.red,
            backgroundColor: backgroundColorBlack,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            side: BorderSide(
              color: isChoiceChipSelected
                  ? backgroundColorBlack
                  : white, // Black color for the border
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "ToggleButton",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ToggleButtons(
            isSelected: _selections,
            onPressed: (int index) {
              setState(() {
                _selections[index] = !_selections[index];
              });
            },
            color: white,
            fillColor: Colors.red.shade900.withOpacity(.2),
            selectedColor: Colors.red,
            borderColor: Colors.grey.withOpacity(.2),
            selectedBorderColor: Colors.grey.withOpacity(.2),
            children: const <Widget>[
              Icon(Icons.train),
              Icon(Icons.pedal_bike),
              Icon(Icons.electric_scooter),
              Icon(Icons.car_rental),
              Icon(Icons.fire_truck),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Visibility",
            style: TextStyle(
              color: Colors.grey,
              fontFamily: "Poppins",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  if (isVisible) {
                    isVisible = false;
                  } else {
                    isVisible = true;
                  }
                },
              );
            },
            child: Container(
              height: 100,
              width: 100,
              color: const Color(0xFF292929),
              child: Visibility(
                visible: isVisible,
                child: const Icon(
                  Icons.remove_red_eye,
                  size: 50,
                  color: white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
