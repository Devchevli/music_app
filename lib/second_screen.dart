import 'package:flutter/material.dart';
import 'package:music_app/Models.dart';
import 'package:music_app/images/App_images.dart';

class Second_screen extends StatefulWidget {
  const Second_screen({super.key});

  @override
  State<Second_screen> createState() => _Second_screenState();
}

class _Second_screenState extends State<Second_screen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: const Drawer(backgroundColor: Colors.white, width: 200),
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),


        body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: NetworkImage(AppImages.Second_screen),
                  fit: BoxFit.cover,
                  opacity: 0.5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 150),
                child: (Text(
                  "Welcome Back!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, right: 162),
                child: Text(
                  "What Do You feel like today? ",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 40,
                  width: 360,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search, Song, Playlist, Artist....",
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          color: Colors.blueGrey,
                        )),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    text: "Recent",
                  ),
                  Tab(
                    text: "Top 50",
                  ),
                  Tab(
                    text: "Chill",
                  ),
                  Tab(
                    text: "Pop",
                  ),
                  Tab(
                    text: "Old is Gold",
                  ),
                ],
              ),
              SizedBox(
                height: 514,
                child: TabBarView(
                  children: [
                    //////////// Recent ////////////
                    ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: [
                              Container(
                                height: 230,
                                width: 230,
                                margin:
                                    const EdgeInsets.only(top: 20, left: 25),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            ListViewScreen[index].image),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  color: Colors.transparent,
                                  height: 35,
                                  width: 210,
                                  alignment: Alignment.center,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      ListViewScreen[index].text,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    //////////// Top 50 ////////////
                    ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: [
                              Container(
                                height: 230,
                                width: 230,
                                margin:
                                    const EdgeInsets.only(top: 20, left: 25),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(Top50[index].image),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  color: Colors.transparent,
                                  height: 35,
                                  width: 210,
                                  alignment: Alignment.center,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      Top50[index].text,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    //////////// Chill  ////////////
                    ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: [
                              Container(
                                height: 230,
                                width: 230,
                                margin:
                                    const EdgeInsets.only(top: 20, left: 25),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(Chill[index].image),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  color: Colors.transparent,
                                  height: 35,
                                  width: 210,
                                  alignment: Alignment.center,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      Chill[index].text,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    //////////// pop  ////////////
                    ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: [
                              Container(
                                height: 230,
                                width: 230,
                                margin:
                                    const EdgeInsets.only(top: 20, left: 25),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(pop[index].image),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  color: Colors.transparent,
                                  height: 35,
                                  width: 210,
                                  alignment: Alignment.center,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      pop[index].text,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    //////////// old is gold  ////////////
                    ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: [
                              Container(
                                height: 230,
                                width: 230,
                                margin:
                                    const EdgeInsets.only(top: 20, left: 25),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            OldisGold[index].image),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  color: Colors.transparent,
                                  height: 35,
                                  width: 210,
                                  alignment: Alignment.center,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      OldisGold[index].text,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
