import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  final String photoUrl;
  final String name;
  final bool isOfficial;
  const CustomContainer(
      {super.key,
      required this.photoUrl,
      required this.name,
      required this.isOfficial});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      width: 85,
      height: 110,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Container(
          //   height: 98.3,
          //   width: 85,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(12), color: Colors.amber),
          //   child: Image.asset(
          //     photoUrl,
          //     fit: BoxFit.contain,
          //   ),
          // ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                photoUrl,
                width: 85,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 91,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.black),
                  ),
                  Container(
                    // margin: EdgeInsets.only(bottom: 12),
                    child: Container(
                      height: 16,
                      width: 16,
                      child: isOfficial
                          ? Image.asset('assets/icons/verified.png')
                          : null,
                    ),
                  )
                ],
              ),
              width: 66,
              height: 16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
