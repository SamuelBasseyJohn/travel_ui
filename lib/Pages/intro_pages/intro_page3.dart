import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travel_ui/Pages/home_page.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
            child: Container(
              width: 268,
              height: 72,
              child: Text(
                "Easily Travel From Your Pocket",
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                style: TextStyle(
                    color: HexColor('000000'),
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Eaasily plan, manage and order your trip, and journey with Safari',
              style: TextStyle(color: HexColor("BFBFBF")),
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: Center(
              child: ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                style: ElevatedButton.styleFrom(
                    backgroundColor: HexColor('1D3FFF'),
                    minimumSize: const Size(263, 59),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ))
      ],
    );
  }
}
