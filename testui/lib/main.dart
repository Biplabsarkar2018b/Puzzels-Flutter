import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testui/btmnavbar.dart';
import 'package:testui/chatitems.dart';
import 'package:testui/rowitems.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xfff5f5f5),
            // leading: Container(
            //   margin: const EdgeInsets.only(left: 24),
            //   width: 70,
            //   height: 70,
            //   child: const CircleAvatar(
            //     backgroundImage: AssetImage('assets/icons/photo6.jpg'),
            //   ),
            // ),
            leading: Container(
              margin: EdgeInsets.only(left: 10),
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/icons/photo6.jpg')),
            ),
            // ignore: prefer_const_constructors
            title: Center(
              child: Text(
                'Puzzels',
                style: GoogleFonts.nunito(
                    color: Color(0xffFF5F8F),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 27),
                height: 24,
                width: 24,
                child: Image.asset('assets/icons/confi.png'),
              ),
            ],
          ),
          body: Container(
            color: const Color(0xfff5f5f5),
            // padding: const EdgeInsets.symmetric(horizontal: 24),
            // margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                //row------
                Container(
                  padding: const EdgeInsets.only(left: 24),
                  margin: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomContainer(
                          photoUrl: 'assets/icons/photo9.jpg',
                          name: 'Likes',
                          isOfficial: false,
                        ),
                        CustomContainer(
                          photoUrl: 'assets/icons/photo3.jpg',
                          name: 'Tony',
                          isOfficial: true,
                        ),
                        CustomContainer(
                          photoUrl: 'assets/icons/photo5.jpg',
                          name: 'James',
                          isOfficial: true,
                        ),
                        CustomContainer(
                          photoUrl: 'assets/icons/photo2.jpg',
                          name: 'Jordan',
                          isOfficial: false,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //search bar------------------
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: Material(
                    borderRadius: BorderRadius.circular(30),
                    elevation: 3,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Search',
                          hintStyle: GoogleFonts.nunito(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xff999999)),
                          prefixIcon:
                              Image.asset('assets/icons/searchnormal1.png'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0))),
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Column(
                      children: const [
                        CustomRow(
                          isOfficial: true,
                          unreadMessages: 1,
                          name: 'Jordan',
                          photoUrl: 'assets/icons/photo2.jpg',
                          isTyping: false,
                          lastMessage: 'Hii!',
                        ),
                        CustomRow(
                          isOfficial: true,
                          unreadMessages: 0,
                          name: 'Tim',
                          photoUrl: 'assets/icons/photo4.jpg',
                          isTyping: false,
                          lastMessage: 'Hii!',
                        ),
                        CustomRow(
                          isOfficial: false,
                          unreadMessages: 10,
                          name: 'James',
                          photoUrl: 'assets/icons/photo5.jpg',
                          isTyping: true,
                          lastMessage: 'Hii!',
                        ),
                      ],
                    ),
                  ),
                ),

                // Image.asset('assets/icons/Vector.png')
              ],
            ),
          ),
          bottomNavigationBar: BNB()),
    );
  }
}
