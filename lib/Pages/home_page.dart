import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("FBFBFB"),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          height: 120,
          color: HexColor("FBFBFB"),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
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
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 28, 109, 20),
            child: Text(
              "Where would you like to go?",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: HexColor("000000")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 0, 28, 31),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    width: 251,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor("FFFFFF"),
                      boxShadow: [
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
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search location",
                        hintStyle: TextStyle(fontSize: 14),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //   flex: 0,
                //   child: SizedBox(
                //     width: 20,
                //   ),
                // ),
                Expanded(
                  flex: 2,
                  child: Center(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
