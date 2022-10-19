import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travel_ui/Pages/expanded_tile.dart';
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
    List<Map<String, String>> images = [
      {
        "Image": "assets/images/camp1.png",
        "Title": "Tangjung Aan",
        "SubTitle": "Pujut, Lombok Tengah",
        "Price": "\$230"
      },
      {
        "Image": "assets/images/campimg2.png",
        "Title": "Forest Camping",
        "SubTitle": "Cabo, Cape Verde",
        "Price": "\$180"
      },
      {
        "Image": "assets/images/campimg3.jpg",
        "Title": "Summer Camp",
        "SubTitle": "Ontario, Canada",
        "Price": "\$450"
      },
      {
        "Image": "assets/images/campimg4.jpeg",
        "Title": "Tangjung Aan",
        "SubTitle": "Pujut, Lombok Tengah",
        "Price": "\$310"
      },
    ];
    return Scaffold(
      appBar: PreferredSize(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28, 40, 28, 0),
          child: appBarItems(tabController),
        ),
        preferredSize: Size(double.maxFinite, 360),
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: TabBarView(
                controller: tabController,
                children: [
                  SizedBox(
                    height: 20,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(28, 10, 28, 5),
                          title: const Text(
                            "Favorite Place",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("BFBFBF")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: images.length,
                                itemBuilder: (context, index) => Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 210,
                                      width: double.maxFinite,
                                      color: HexColor("FBFBFB"),
                                    ),
                                    InkWell(
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ExpandTilePage(
                                                    image: images[index]
                                                        ["Image"]!,
                                                    title: images[index]
                                                        ["Title"]!,
                                                    subtitle: images[index]
                                                        ["SubTitle"]!,
                                                    price: images[index]
                                                        ["Price"]!,
                                                  ))),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 164,
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                images[index]["Image"]!),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      left: 50,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    110, 46, 46, 46),
                                                blurRadius: 16,
                                                spreadRadius: 1,
                                              ),
                                            ],
                                            color: HexColor("FBFBFB")),
                                        height: 60,
                                        width: 254,
                                        child: Center(
                                          child: ListTile(
                                            title:
                                                Text(images[index]["Title"]!),
                                            subtitle: Text(
                                                images[index]["SubTitle"]!),
                                            trailing: Container(
                                              decoration: BoxDecoration(
                                                color: HexColor("EFF4FF"),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              height: 32,
                                              width: 48,
                                              child: Center(
                                                child: Text(
                                                  images[index]["Price"]!,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: HexColor("1D3FFF"),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(28, 30, 28, 5),
                          title: const Text(
                            "Favorite Place",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("BFBFBF")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: images.length,
                                itemBuilder: (context, index) => Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 210,
                                      width: double.maxFinite,
                                      color: HexColor("FBFBFB"),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 164,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              images[index]["Image"]!),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      left: 50,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    110, 46, 46, 46),
                                                blurRadius: 16,
                                                spreadRadius: 1,
                                              ),
                                            ],
                                            color: HexColor("FBFBFB")),
                                        height: 60,
                                        width: 254,
                                        child: Center(
                                          child: ListTile(
                                            title:
                                                Text(images[index]["Title"]!),
                                            subtitle: Text(
                                                images[index]["SubTitle"]!),
                                            trailing: Container(
                                              decoration: BoxDecoration(
                                                color: HexColor("EFF4FF"),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              height: 32,
                                              width: 48,
                                              child: Center(
                                                child: Text(
                                                  images[index]["Price"]!,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: HexColor("1D3FFF"),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(28, 30, 28, 5),
                          title: const Text(
                            "Favorite Place",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("BFBFBF")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: images.length,
                                itemBuilder: (context, index) => Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 210,
                                      width: double.maxFinite,
                                      color: HexColor("FBFBFB"),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 164,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              images[index]["Image"]!),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      left: 50,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    110, 46, 46, 46),
                                                blurRadius: 16,
                                                spreadRadius: 1,
                                              ),
                                            ],
                                            color: HexColor("FBFBFB")),
                                        height: 60,
                                        width: 254,
                                        child: Center(
                                          child: ListTile(
                                            title:
                                                Text(images[index]["Title"]!),
                                            subtitle: Text(
                                                images[index]["SubTitle"]!),
                                            trailing: Container(
                                              decoration: BoxDecoration(
                                                color: HexColor("EFF4FF"),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              height: 32,
                                              width: 48,
                                              child: Center(
                                                child: Text(
                                                  images[index]["Price"]!,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: HexColor("1D3FFF"),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(28, 30, 28, 5),
                          title: const Text(
                            "Favorite Place",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("BFBFBF")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: images.length,
                                itemBuilder: (context, index) => Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 210,
                                      width: double.maxFinite,
                                      color: HexColor("FBFBFB"),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 164,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              images[index]["Image"]!),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      left: 50,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    110, 46, 46, 46),
                                                blurRadius: 16,
                                                spreadRadius: 1,
                                              ),
                                            ],
                                            color: HexColor("FBFBFB")),
                                        height: 60,
                                        width: 254,
                                        child: Center(
                                          child: ListTile(
                                            title:
                                                Text(images[index]["Title"]!),
                                            subtitle: Text(
                                                images[index]["SubTitle"]!),
                                            trailing: Container(
                                              decoration: BoxDecoration(
                                                color: HexColor("EFF4FF"),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              height: 32,
                                              width: 48,
                                              child: Center(
                                                child: Text(
                                                  images[index]["Price"]!,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: HexColor("1D3FFF"),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(28, 30, 28, 5),
                          title: const Text(
                            "Favorite Place",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("BFBFBF")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: images.length,
                                itemBuilder: (context, index) => Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 210,
                                      width: double.maxFinite,
                                      color: HexColor("FBFBFB"),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 164,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              images[index]["Image"]!),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      left: 50,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    110, 46, 46, 46),
                                                blurRadius: 16,
                                                spreadRadius: 1,
                                              ),
                                            ],
                                            color: HexColor("FBFBFB")),
                                        height: 60,
                                        width: 254,
                                        child: Center(
                                          child: ListTile(
                                            title:
                                                Text(images[index]["Title"]!),
                                            subtitle: Text(
                                                images[index]["SubTitle"]!),
                                            trailing: Container(
                                              decoration: BoxDecoration(
                                                color: HexColor("EFF4FF"),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              height: 32,
                                              width: 48,
                                              child: Center(
                                                child: Text(
                                                  images[index]["Price"]!,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: HexColor("1D3FFF"),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(28, 30, 28, 5),
                          title: const Text(
                            "Favorite Place",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("BFBFBF")),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: images.length,
                                itemBuilder: (context, index) => Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 210,
                                      width: double.maxFinite,
                                      color: HexColor("FBFBFB"),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 164,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              images[index]["Image"]!),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      left: 50,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    110, 46, 46, 46),
                                                blurRadius: 16,
                                                spreadRadius: 1,
                                              ),
                                            ],
                                            color: HexColor("FBFBFB")),
                                        height: 60,
                                        width: 254,
                                        child: Center(
                                          child: ListTile(
                                            title:
                                                Text(images[index]["Title"]!),
                                            subtitle: Text(
                                                images[index]["SubTitle"]!),
                                            trailing: Container(
                                              decoration: BoxDecoration(
                                                color: HexColor("EFF4FF"),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              height: 32,
                                              width: 48,
                                              child: Center(
                                                child: Text(
                                                  images[index]["Price"]!,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: HexColor("1D3FFF"),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
