import 'package:flutter/material.dart';

class BNB extends StatelessWidget {
  const BNB({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              child: Container(
                height: 35,
                width: 35,
                child: Image.asset('assets/icons/home.png'),
              ),
            ),
            label: 'home'),
        BottomNavigationBarItem(
            icon: Container(
              child: Container(
                height: 35,
                width: 35,
                child: Image.asset('assets/icons/globalsearch.png'),
              ),
            ),
            label: 'home'),
        BottomNavigationBarItem(
            icon: Container(
              child: Container(
                height: 35,
                width: 35,
                child: Image.asset('assets/icons/calendaredit.png'),
              ),
            ),
            label: 'home'),
        BottomNavigationBarItem(
            icon: Container(
              child: Container(
                height: 35,
                width: 35,
                child: Image.asset('assets/icons/messages3.png'),
              ),
            ),
            label: 'Chat'),
      ],
    );
  }
}
