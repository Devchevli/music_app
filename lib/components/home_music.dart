import 'package:flutter/material.dart';
import 'package:music_app/components/audio_controller.dart';
import 'package:music_app/components/carousal_controller.dart';
import 'package:music_app/components/page_controller.dart';
import 'package:music_app/utils/audio_song.dart';
import 'package:provider/provider.dart';

class HomeMusic extends StatelessWidget {
  const HomeMusic({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Movies.map(
                (e) {
                  return Consumer<CarouselControllerPro>(
                    builder: (builder, pro, _) {
                      return GestureDetector(
                        onTap: () {
                          pro.setcurrentIndex(0);
                          pro.setAllSongs(movie: e);
                          Provider.of<AudioController>(context, listen: false)
                              .openSong(path: pro.getAllSongs[0]);
                          Provider.of<AudioController>(context, listen: false)
                              .setstatus();
                          pro.setSelectMovieName(movieName: e);
                          Provider.of<Page_Controller>(context, listen: false)
                              .changePage(2);
                        },
                        child: Container(
                          height: 180,
                          width: 160,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(Images_Movies[e]),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Text(e),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            ),
          )
        ],
      ),
    );
  }
}
