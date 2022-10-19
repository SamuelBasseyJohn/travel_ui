import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travel_ui/items.dart';

class ExpandTilePage extends StatelessWidget {
  ExpandTilePage(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.price})
      : super(key: key);
  String image;
  String subtitle;
  String title;
  String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size(double.maxFinite, 100),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(28, 22.36, 28, 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: HexColor("EFF4FF"),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Image.asset(
                          "assets/images/backarrow.png",
                          width: 16,
                          height: 10.5,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                        color: HexColor("000000"),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: HexColor("EFF4FF"),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Icon(Icons.more_horiz_rounded),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Center(
              child: Container(
                alignment: Alignment.center,
                height: 332,
                width: 341,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
              trailing: Container(
                decoration: BoxDecoration(
                  color: HexColor("EFF4FF"),
                  borderRadius: BorderRadius.circular(6),
                ),
                height: 36,
                width: 55,
                child: Center(
                  child: Text(
                    price,
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
          const SizedBox(
            height: 28,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              children: const [
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
            child: Text(
              "The most beautiful beach in Lombok and the closest to Kuta. It's only 15 minutes ride by scooter on a paved road from Kuta.",
              style: TextStyle(color: HexColor("BFBFBFBF")),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor("FFFFFF"),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                ),
                height: 101,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 45,
                        width: 96,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: price,
                                  style: TextStyle(
                                      fontSize: 16, color: HexColor("1D3FFF")),
                                ),
                                TextSpan(
                                  text: "/person",
                                  style: TextStyle(
                                      fontSize: 14, color: HexColor("BFBFBF")),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: HexColor("1D3FFF"),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 40,
                        width: 95,
                        child: Center(
                          child: Text(
                            "Order Now",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: HexColor("FFFFFF"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
