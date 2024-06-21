import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'admin_profile.dart';

class OpeningHour extends StatefulWidget {
  const OpeningHour({super.key});

  @override
  State<OpeningHour> createState() => _OpeningHourState();
}

List<String> img_name = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday",
];

class _OpeningHourState extends State<OpeningHour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return Container(
                        width: 430,
                        height: 1200,
                        color: Color(0xff191919),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 29, top: 14.5),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      width: 48,
                                      height: 5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Color(0xff000000))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: Color(0xff282828)),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_back_ios_new_outlined,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 92.0),
                                        child: const Text(
                                          'Opening hours',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Morning',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                      SizedBox(
                                        width: 135,
                                      ),
                                      Text(
                                        'Evening',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 24.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          /// List 1 Morning  ///

                                          SizedBox(
                                            height: 1150,
                                            width: 190,
                                            child: ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(
                                                        parent:
                                                            NeverScrollableScrollPhysics()),
                                                itemCount: 7,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return Container(
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xff6f6f70),
                                                            // border: Border.all(
                                                            //     width: .5, color: Color(0xff6f6f70))
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 8.0),
                                                            child: Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 70,
                                                                  child: Text(
                                                                    img_name[
                                                                        index],
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 7,
                                                                ),
                                                                Text(
                                                                  'Open',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                SwitchScreen(),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  width: .5,
                                                                  color: Color(
                                                                      0xffffffff))),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10.0,
                                                                    vertical:
                                                                        5),
                                                            child: Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 70,
                                                                  child: Text(
                                                                    '06:00 PM',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 73,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .access_time_outlined,
                                                                  color: Colors
                                                                      .white,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  width: .5,
                                                                  color: Color(
                                                                      0xffffffff))),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10.0,
                                                                    vertical:
                                                                        5),
                                                            child: Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 70,
                                                                  child: Text(
                                                                    '12:00 AM',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 73,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .access_time_outlined,
                                                                  color: Colors
                                                                      .white,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 24,
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          ),

                                          SizedBox(
                                            width: 13,
                                          ),

                                          /// List 2 Evening  ///

                                          SizedBox(
                                            height: 1150,
                                            width: 190,
                                            child: ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(
                                                        parent:
                                                            NeverScrollableScrollPhysics()),
                                                itemCount: 7,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return Container(
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xff6f6f70),
                                                            // border: Border.all(
                                                            //     width: .5, color: Color(0xff6f6f70))
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 8.0),
                                                            child: Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 70,
                                                                  child: Text(
                                                                    img_name[
                                                                        index],
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 7,
                                                                ),
                                                                Text(
                                                                  'Open',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                                SizedBox(
                                                                    width: 4),
                                                                SwitchScreen(),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  width: .5,
                                                                  color: Color(
                                                                      0xffffffff))),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10.0,
                                                                    vertical:
                                                                        5),
                                                            child: Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 70,
                                                                  child: Text(
                                                                    '06:00 PM',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 73,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .access_time_outlined,
                                                                  color: Colors
                                                                      .white,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  width: .5,
                                                                  color: Color(
                                                                      0xffffffff))),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10.0,
                                                                    vertical:
                                                                        5),
                                                            child: Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 70,
                                                                  child: Text(
                                                                    '12:00 AM',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 73,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .access_time_outlined,
                                                                  color: Colors
                                                                      .white,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 24,
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: Colors.black,
                      ),
                      Text(
                        "Opening hours",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = true;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
          scale: 0.7,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.white,
            inactiveThumbColor: Color(0xff282828),
            autofocus: isSwitched,
            activeTrackColor: Color(0xff48ff00),
            // inactiveThumbColor: Colors.white,
            inactiveTrackColor: Color(0xffff0101),
          )),
    ]);
  }
}
