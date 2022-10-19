import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

const String onboardingImage = 'assets/images/travel_geography.png';

final HexColor backgroundColor = HexColor("FBFBFB");

final HexColor blue = HexColor("FBFBFB");

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

Widget appBarItems(TabController tabController) {
  return Column(
    children: [
      Container(
        height: 100,
        color: HexColor("FBFBFB"),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          title: Text(
            'Howdy',
            style: TextStyle(
                color: HexColor('BFBFBF'),
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            'Samuel Bassey',
            style: TextStyle(
                color: HexColor('000000'),
                fontSize: 12,
                fontWeight: FontWeight.w600),
          ),
          leading: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 128, 0),
                borderRadius: BorderRadius.circular(8)),
            child: Image.asset('assets/images/profile_pic.png'),
          ),
          trailing: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: HexColor("1D3FFF"),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Image.asset(
              'assets/images/Notification.png',
              width: 16,
              height: 18.82,
            )),
          ),
        ),
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
              width: 251,
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
      TabBar(
        labelColor: HexColor("FFFFFF"),
        unselectedLabelColor: HexColor('BFBFBF'),
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
        isScrollable: true,
        controller: tabController,
        indicator: BoxDecoration(
            color: HexColor("1D3FFF"), borderRadius: BorderRadius.circular(8)),
        labelStyle: TextStyle(
          color: HexColor("1D3FFF"),
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        tabs: const [
          Tab(
            text: "Camping",
          ),
          Tab(
            text: "Mountain",
          ),
          Tab(
            text: "Climbing",
          ),
          Tab(
            text: "Swimming",
          ),
          Tab(
            text: "Flight",
          ),
          Tab(
            text: "Flight",
          ),
        ],
      ),
    ],
  );
}
