import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRow extends StatelessWidget {
  final bool isOfficial;
  final int unreadMessages;
  final String name;
  final String photoUrl;
  final String lastMessage;
  final bool isTyping;
  const CustomRow(
      {super.key,
      required this.isOfficial,
      required this.unreadMessages,
      required this.name,
      required this.photoUrl,
      required this.isTyping,
      required this.lastMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.5),
      child: Row(
        children: [
          CircleAvatar(
            // minRadius: 50,
            maxRadius: 35,
            backgroundImage: AssetImage(photoUrl),
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color:
                        Color(unreadMessages == 0 ? 0xff818181 : 0xff050505)),
              ),
              isTyping
                  ? Text(
                      'Typing...',
                      style: GoogleFonts.nunito(
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFF5F8F),
                      ),
                    )
                  : Text(
                      lastMessage,
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(
                              unreadMessages == 0 ? 0xff818181 : 0xff050505)),
                    )
            ],
          ),
          SizedBox(
            width: 6.67,
          ),
          isOfficial
              ? Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Container(
                    height: 19.67,
                    width: 19.67,
                    child: Image.asset('assets/icons/verified.png'),
                  ),
                )
              : Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Container(
                    height: 19.67,
                    width: 19.67,
                    color: Colors.white,
                  ),
                ),
          SizedBox(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '13:10',
                  style: TextStyle(
                      color:
                          Color(unreadMessages == 0 ? 0xff818181 : 0xff050505)),
                ),
                Container(
                  child: Center(
                    child: Text(
                      unreadMessages <= 9 ? unreadMessages.toString() : '9+',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:
                          Color(unreadMessages == 0 ? 0xffffffff : 0xffFF5F8F)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
