import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travel_ui/items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 6, vsync: this);
    return Scaffold(
      backgroundColor: HexColor("FBFBFB"),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: false,
              snap: false,
              stretch: false,
              title: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  child: Image.asset('assets/images/profile_pic.png'),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 128, 0),
                      borderRadius: BorderRadius.circular(8)),
                ),
                trailing: Container(
                  height: 48,
                  width: 48,
                  child: Image.asset('assets/images/Notification.png'),
                  decoration: BoxDecoration(
                      color: HexColor("1D3FFF"),
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              elevation: 1,
              automaticallyImplyLeading: false,
              backgroundColor: HexColor("FBFBFB"),
              expandedHeight: 340,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: appBarItems,
                ),
              ),
              bottom: TabBar(
                labelColor: HexColor("FFFFFF"),
                unselectedLabelColor: HexColor('BFBFBF'),
                padding: EdgeInsets.fromLTRB(28, 8, 0, 0),
                isScrollable: true,
                controller: tabController,
                indicator: BoxDecoration(
                    color: HexColor("1D3FFF"),
                    borderRadius: BorderRadius.circular(8)),
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
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: tabController,
                children: const [
                  Center(
                    child: Icon(
                      Icons.flight,
                      color: Colors.black,
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.flight,
                      color: Colors.black,
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.flight,
                      color: Colors.black,
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.flight,
                      color: Colors.black,
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.flight,
                      color: Colors.black,
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.flight,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
