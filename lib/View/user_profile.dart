import 'package:flutter/material.dart';

class user_profile extends StatefulWidget {
  const user_profile({
    super.key,
  });

  @override
  State<user_profile> createState() => _user_profileState();
}

class _user_profileState extends State<user_profile> {
  @override
  Widget build(BuildContext context) {
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
      body: Padding(
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
                            'assets/Ellipse 16.png',
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
                        'Anas KT',
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
                        '+91 ${7548855565}  |  user',
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
              ],
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 275,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(52),
                                  child: Image.asset(
                                    "assets/Ellipse 16 (2).png",
                                    width: 44,
                                    height: 44,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Binoy Krishna',
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
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 340,
                            child:
                                Divider(height: 0.5, color: Color(0xff414040)),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
