import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_ui/Pages/bottom_tabs/explore_tab.dart';
import 'package:travel_ui/Pages/bottom_tabs/profile_tab.dart';
import 'package:travel_ui/Pages/bottom_tabs/setting_tab.dart';
import 'package:travel_ui/Pages/home_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  //List of the bottom navigation bar Pages
  List pages = [
    HomePage(),
    Explore(),
    Profile(),
    Settings(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 20,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[500],
        items: const [
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 22,
                width: 22,
                child: Image(
                  image: AssetImage("assets/images/Home.png"),
                ),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 22,
                width: 22,
                child: Image(
                  image: AssetImage("assets/images/Discount.png"),
                ),
              ),
              label: "Discount"),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 22,
                width: 22,
                child: Image(
                  image: AssetImage("assets/images/Profile.png"),
                ),
              ),
              label: "Profile"),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 22,
                width: 22,
                child: Image(
                  image: AssetImage("assets/images/Papers.png"),
                ),
              ),
              label: "Papers")
        ],
      ),
    );
  }
}
