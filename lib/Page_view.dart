
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/Models.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class PageViewEx extends StatefulWidget {
  const PageViewEx({super.key});

  @override
  State<PageViewEx> createState() => _PageViewExState();
}

class _PageViewExState extends State<PageViewEx> {
  int activeIndex = 0;
  PageController controller = PageController(
    initialPage: 0,
    viewportFraction: 1,
  );

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            physics: const PageScrollPhysics(),
            onPageChanged: (val) {
              activeIndex = val;
              setState(() {});
            },
            itemCount: onBoardingScreen.length,
            itemBuilder: (BuildContext context, int index) {
              return PageViewContainer(
                image: onBoardingScreen[index].image,
                title: onBoardingScreen[index].title,
                subTitle: onBoardingScreen[index].subTitle,
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        fontFamily: "Gilroy-Regular",
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff2d2b2e),
                        height: 28 / 18,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: onBoardingScreen.length,
                    axisDirection: Axis.horizontal,
                    effect: const WormEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.black,
                      spacing: 3,
                      dotHeight: 7,
                      dotWidth: 7,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      controller.nextPage(duration: const Duration(milliseconds:500), curve: Curves.linear);
                    },


                      child: const Text(
                        "Next",
                        style: TextStyle(
                          fontFamily: "Gilroy-Regular",
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff2d2b2e),
                          height: 28 / 18,
                        ),
                        textAlign: TextAlign.right,
                      ),

                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PageViewContainer extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const PageViewContainer(
      {super.key,
        required this.image,
        required this.title,
        required this.subTitle});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(decoration: const BoxDecoration(color: Color(0xff0D0B1F)),

      height: size.height,
      width: size.width,
     
      child: Column(
        children: [

          SizedBox(height: 450,width: 500,child: Image.network(image,fit: BoxFit.cover,)),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 115),
            child: Text(
              title,
              maxLines: 2,
              style: const TextStyle(
                fontFamily: "Gilroy-Bold",
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: size.width - 190,
            child: Text(
              subTitle,
              maxLines: 2,
              style: const TextStyle(
                fontFamily: "DM Sans",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff2d2b2e),
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}