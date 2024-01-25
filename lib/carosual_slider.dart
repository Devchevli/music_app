import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:music_app/images/App_images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarousalSliderEx extends StatefulWidget {
  const CarousalSliderEx({super.key});

  @override
  State<CarousalSliderEx> createState() => _CarousalSliderExState();
}

class _CarousalSliderExState extends State<CarousalSliderEx>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedController;
  bool isAnimated = false;
  bool showPlay = true;
  bool stopPlay = false;
  AssetsAudioPlayer player = AssetsAudioPlayer();

  List<String> items = [
    AppImages.modelOne,
    AppImages.modelTwo,
    AppImages.modelThree,
    AppImages.modelFour
  ];
  List<String> txt = [
    "ModelOne",
    "ModelTwo",
    "ModelThree",
    "ModelFour",
  ];

  @override
  void initState() {
    player.open(Audio("assets/audio/Heat-Waves(PagalWorld).mp3"));
    animatedController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    super.initState();
  }

  void animatedeIcon() {
    setState(() {
      isAnimated = !isAnimated;
      isAnimated ? animatedController.forward() : animatedController.reverse();
    });
    if (isAnimated) {
      setState(() {
        player.play();
        animatedController.forward();
      });
    } else {
      setState(() {
        player.pause();
        animatedController.reverse();
      });
    }
  }

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          color: Color(0xff1C1F3E),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
                items: [
                  for (String i in items)
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(i), fit: BoxFit.cover),
                          boxShadow: kElevationToShadow[2]),
                    )
                ],
                options: CarouselOptions(
                    initialPage: activeIndex,
                    onPageChanged: (i, r) {
                      activeIndex = i;
                      setState(() {});
                    },
                    viewportFraction: .59,
                    height: 350,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.easeInSine)),
            const SizedBox(
              height: 15,
            ),
            AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: items.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.pinkAccent,
                dotColor: Colors.white,
                dotHeight: 7,
                dotWidth: 7,
                spacing: 5,
                expansionFactor: 4,
              ),
            ),//
            GestureDetector(
              onTap: () {
                animatedeIcon();
              },
              child: AnimatedIcon(
                icon: isAnimated
                    ? AnimatedIcons.play_pause
                    : AnimatedIcons.pause_play,
                progress: animatedController,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              txt[activeIndex],
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
