import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter_mapp_clone/widgets/app_bar_custom.dart';
import 'package:flutter_mapp_clone/widgets/community_widget.dart';
import 'package:flutter_mapp_clone/widgets/footer_custom.dart';
import 'package:flutter_mapp_clone/widgets/layout_widgets.dart';
import 'package:flutter_mapp_clone/widgets/show_widgets.dart';
import 'package:flutter_mapp_clone/widgets/user_input_widgets.dart';
import 'package:flutter_mapp_clone/widgets/visual_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse(
    'https://github.com/fluttermapp/flutter_widgets/tree/main/lib/every_widgets');

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({Key? key}) : super(key: key);

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  final List<Widget> widgets = [
    const LayoutWidgets(),
    const VisualLayoutWidgets(),
    const UserInputWidgets(),
    const ShowWidgets(),
    const CommunityWidget(),
  ];
  int _currentWidgetIndex = 0;

  void setCurrentWidgetIndex(int currentWidgetIndex) {
    setState(() {
      _currentWidgetIndex = currentWidgetIndex;
    });
    print(_currentWidgetIndex);
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    const int pageIndex = 2;
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
                color: backgroundColorGrey,
                child: Column(
                  children: [
                    const Text(
                      "Widgets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 46,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton.icon(
                      // <-- TextButton
                      onPressed: _launchUrl,
                      icon: Image.asset(
                        "assets/github-mark-white.png",
                        scale: 10,
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return hoverColor;
                            }
                            return Colors.transparent;
                          },
                        ),
                      ),

                      label: const Text(
                        'Every Flutter Widget',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: ({int index = 0}) {
                            setState(() {
                              setCurrentWidgetIndex(index);
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered) &&
                                    (_currentWidgetIndex != 0)) {
                                  return hoverColor;
                                }
                                if (_currentWidgetIndex == 0) {
                                  return Colors.red.shade700;
                                }
                                return Colors.transparent;
                              },
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              "Layout",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                          onPressed: ({int index = 1}) {
                            setState(() {
                              setCurrentWidgetIndex(index);
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered) &&
                                    (_currentWidgetIndex != 1)) {
                                  return hoverColor;
                                }
                                if (_currentWidgetIndex == 1) {
                                  return Colors.red.shade700;
                                }
                                return Colors.transparent;
                              },
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              "Visual Layout",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                          onPressed: ({int index = 2}) {
                            setState(() {
                              setCurrentWidgetIndex(index);
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered) &&
                                    (_currentWidgetIndex != 2)) {
                                  return hoverColor;
                                }
                                if (_currentWidgetIndex == 2) {
                                  return Colors.red.shade700;
                                }
                                return Colors.transparent;
                              },
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              "User Input",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                          onPressed: ({int index = 3}) {
                            setState(() {
                              setCurrentWidgetIndex(index);
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered) &&
                                    (_currentWidgetIndex != 3)) {
                                  return hoverColor;
                                }
                                if (_currentWidgetIndex == 3) {
                                  return Colors.red.shade700;
                                }
                                return Colors.transparent;
                              },
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              "Show",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                          onPressed: ({int index = 4}) {
                            setState(() {
                              setCurrentWidgetIndex(index);
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered) &&
                                    (_currentWidgetIndex != 4)) {
                                  return hoverColor;
                                }
                                if (_currentWidgetIndex == 4) {
                                  return Colors.red.shade700;
                                }
                                return Colors.transparent;
                              },
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              "Community",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      color: backgroundColorBlack,
                      child: widgets[_currentWidgetIndex],
                    ),
                  ],
                ),
              ),
              const FooterCustom(pageIndex: pageIndex),
            ],
          ),
        ),
      ),
    );
  }
}
