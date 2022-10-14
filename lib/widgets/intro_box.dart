import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_ui/Pages/intro_pages/intro_page1.dart';
import 'package:travel_ui/Pages/intro_pages/intro_page2.dart';
import 'package:travel_ui/Pages/intro_pages/intro_page3.dart';

class IntroPageContainer extends StatelessWidget {
  const IntroPageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    bool lastPage = false;

    return Container(
      decoration: BoxDecoration(
          color: HexColor("EFF4FF"), borderRadius: BorderRadius.circular(40)),
      width: 307 + 34,
      height: 341 + 34,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                lastPage = (index == 2);
              },
              children: const [
                Intro1(),
                Intro2(),
                Intro3(),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.3),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: SlideEffect(
                  spacing: 8.0,
                  radius: 100.0,
                  dotWidth: 10,
                  dotHeight: 10,
                  paintStyle: PaintingStyle.fill,
                  strokeWidth: 1.5,
                  dotColor: HexColor("BFBFBF"),
                  activeDotColor: HexColor("1D3FFF")),
            ),
          )
        ],
      ),
    );
  }
}
