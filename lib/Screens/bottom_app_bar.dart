import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:ticket_booking_app/Screens/profile_screen.dart';
import 'package:ticket_booking_app/Screens/search_sceen.dart';
import 'package:ticket_booking_app/Screens/ticket_screen.dart';
import 'package:ticket_booking_app/utils/app_style.dart';

import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var selectedIndex = 3;

  List _screens = [
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: _screens[selectedIndex],
      ),
      bottomNavigationBar: Container(
        color: Styles.bgColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Divider(
              height: 1,
              color: Color.fromARGB(255, 185, 185, 185),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 24, left: 10, right: 10, top: 5),
              child: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                      label: 'Home',
                      icon: Icon(
                        FluentIcons.home_32_regular,
                      ),
                      activeIcon: Icon(FluentIcons.home_32_filled)),
                  BottomNavigationBarItem(
                      label: 'Search',
                      icon: Icon(FluentIcons.search_32_regular),
                      activeIcon: Icon(FluentIcons.search_32_filled)),
                  BottomNavigationBarItem(
                      label: 'Ticket',
                      icon: Icon(
                        FluentIcons.ticket_diagonal_24_regular,
                      ),
                      activeIcon: Icon(FluentIcons.ticket_diagonal_16_filled)),
                  BottomNavigationBarItem(
                      label: 'Profile',
                      icon: Icon(FluentIcons.person_12_regular),
                      activeIcon: Icon(FluentIcons.person_12_filled)),
                ],
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                iconSize: 25,
                currentIndex: selectedIndex,
                backgroundColor: Styles.bgColor,
                selectedItemColor: Color(0xFF526799),
                unselectedItemColor: Colors.grey,
                onTap: (value) {
                  setState(() {
                    selectedIndex = value;
                    print(selectedIndex);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
