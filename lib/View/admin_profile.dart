import 'package:flutter/material.dart';
import 'package:onlypass_captain_ui/View/user_profile.dart';

class admin_profile extends StatefulWidget {
  const admin_profile({super.key});

  @override
  State<admin_profile> createState() => _admin_profileState();
}

List<String> img = [
  "assets/Ellipse 100 (2).png",
  "assets/Ellipse 16.png",
  "assets/profile_img1.png",
  "assets/Ellipse 100.png",
];

List<String> img_name = [
  "Divya Mohanan",
  "Anas KT",
  "Anandhu Rajaji",
  "Thasneem Khalid",
];
bool value = false;

List<bool> isVisible = [];

class _admin_profileState extends State<admin_profile> {
  List<String> str = [
    "Ask them to download the Onlypass Captain App.",
    "Login using their phone number and verify with the code sent to their phone.",
    "Once they login Instruct them to select 'I am a staff' and choose your business from the list",
    "When they select your business you will receive a one-time code (OTP) on your phone to verify them as part of your staff.",
    "Upon successful verification, they will have access to your business with limitations."
  ];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 4; i++) {
      isVisible.add(false);
    }
    return Scaffold(
      backgroundColor: Color(0xff191919),
      appBar: AppBar(
        backgroundColor: Color(0xff191919),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90.0),
          child: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 32),
          child: Column(
            children: [
              Row(
                children: [
                  ///  Admin Profile IMG   ///

                  Container(
                    child: Stack(children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 45,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 44,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(52),
                            child: Image.asset(
                              'assets/profile_img1.png',
                              width: 81,
                              height: 81,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 60,
                        top: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 15,
                          child: CircleAvatar(
                            backgroundColor: Color(0xff313131),
                            radius: 13,
                            child: Center(
                                child: Icon(
                              Icons.qr_code_2_outlined,
                              color: Colors.white,
                              size: 17,
                            )),
                          ),
                        ),
                      )
                    ]),
                  ),

                  ///  profile name & number  ///

                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Binoy Krishna',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '+91 7548 85 5565  | Admin user',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xff414040))),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.assignment_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'See my activities (coming soon)',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Activity log  of my usage',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat',
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Text(
                    'List of other users',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(
                    width: 96,
                  ),
                  Text(
                    'how to add a user',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline,
                      decorationColor: const Color(0xffffffff),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),

              ///  List of Other Users  ///

              SizedBox(
                height: 275,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (builder) => const user_profile()));
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(52),
                                    child: Image.asset(
                                      img[index],
                                      width: 44,
                                      height: 44,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),

                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        img_name[index],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'User since February, 2023',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Montserrat',
                                        ),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    width: 63,
                                  ),

                                  /// Block & Unblock Button  ///
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isVisible[index] = !isVisible[index];
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: .5,
                                              color: Color(0xffffffff))),
                                      child: SizedBox(
                                          width: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Center(
                                                child: isVisible[index] == false
                                                    ? Text(
                                                        'Block',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )
                                                    : Text(
                                                        'Unblock',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                          )),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15.0),
                                child: SizedBox(
                                  width: 345,
                                  child: Divider(
                                      height: 0.5, color: Color(0xff414040)),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 32,
              ),

              ///  How to add a new user or staff ?  ///

              Container(
                width: 375,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How to add a new user or staff?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Steps involved in adding a new user or staff.\n',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: str.map((strone) {
                        return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "\u2022",
                                style:
                                    TextStyle(fontSize: 30, color: Colors.grey),
                              ),
                              //bullet text
                              SizedBox(
                                width: 8,
                              ),
                              //space between bullet and text
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Text(
                                    strone,
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                ), //text
                              )
                            ]);
                      }).toList(),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          'You need any help?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        Text(
                          '  Contact us',
                          style: TextStyle(
                            color: Color(0xff12fa00),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
