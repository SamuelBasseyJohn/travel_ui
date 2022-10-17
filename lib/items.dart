import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

const String onboardingImage = 'assets/images/travel_geography.png';
Widget appBarItems = Column(
  children: [
    Container(
      height: 100,
      color: HexColor("FBFBFB"),
      // child:
    ),
    Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 81, 20),
      child: Text(
        "Where would you like to go?",
        style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.w600,
            color: HexColor("000000")),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(bottom: 31),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: HexColor("FFFFFF"),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 232, 232, 232),
                  blurRadius: 10,
                  spreadRadius: 4,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                fillColor: HexColor("FFFFFF"),
                prefixIcon: const Icon(Icons.search),
                hintText: "Search location",
                hintStyle: const TextStyle(fontSize: 14),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 48,
            width: 48,
            child: ElevatedButton(
              onPressed: () {},
              child: Image.asset('assets/images/Vector.png'),
              style: ElevatedButton.styleFrom(
                backgroundColor: HexColor("1D3FFF"),
                minimumSize: Size(48, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ],
);
TabBar tabBarTabs = TabBar(
  enableFeedback: true,
  tabs: [
    Tab(
      child: Container(
        child: Text(
          'flight',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
    Tab(
      child: Text(
        'flight',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        'flight',
        style: TextStyle(color: Colors.black),
      ),
    ),
  ],
  isScrollable: true,
);
