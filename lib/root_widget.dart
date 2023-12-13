import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical_test/screens/home/home_screen.dart';

class BottomNavigatoinBarWidget extends StatefulWidget {
  const BottomNavigatoinBarWidget({super.key});

  @override
  State<BottomNavigatoinBarWidget> createState() =>
      _BottomNavigatoinBarWidgetState();
}

class _BottomNavigatoinBarWidgetState extends State<BottomNavigatoinBarWidget> {
  final List<Widget> _pages = [
    // Replace these with your actual pages
    const HomeScreen(), const HomeScreen(), const HomeScreen()
  ];
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
        body: _pages[index],
        bottomNavigationBar: BottomBarBubble(
          backgroundColor: Colors.black,
          color: Colors.grey,
          height: 50,
          selectedIndex: index,
          items: [
            BottomBarItem(
                labelTextStyle:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                label: 'Tracking',
                iconBuilder: (color) => const Icon(
                    Icons.delivery_dining_outlined,
                    color: Colors.grey)),
            BottomBarItem(
                labelTextStyle:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                label: 'Task',
                iconBuilder: (color) =>
                    const Icon(CupertinoIcons.square_list, color: Colors.grey)),
            BottomBarItem(
                labelTextStyle:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                label: 'Tickets',
                iconBuilder: (color) =>
                    const Icon(CupertinoIcons.ticket, color: Colors.grey)),
            BottomBarItem(
                labelTextStyle:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                label: 'Tracking',
                iconBuilder: (color) => const Icon(CupertinoIcons.device_laptop,
                    color: Colors.grey)),
          ],
          onSelect: (index) {
            setState(() {
              index = index;
            });
          },
        ));
  }
}
