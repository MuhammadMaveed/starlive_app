import 'package:flutter/material.dart';
import 'package:starlive_app/consts/images.dart';
import 'package:starlive_app/custom_widgets/our_text.dart';
import 'package:starlive_app/models/leaderboard_screen_model.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: const Icon(Icons.arrow_back),
          title: const TabBar(
              dividerColor: Colors.white,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              unselectedLabelStyle:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              indicatorColor: Colors.white,
              tabs: [
                Text("Creators"),
                Text("Families"),
              ]),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                Expanded(
                  child: TabBarView(children: [
                    /// Creator
                    DefaultTabController(
                      length: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 35,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            child: const TabBar(
                                physics: BouncingScrollPhysics(),
                                dividerColor: Colors.white,
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.grey,
                                labelStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                                unselectedLabelStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                                indicatorColor: Colors.white,
                                tabs: [
                                  Text("Daily"),
                                  Text("Weekly"),
                                  Text("All time"),
                                ]),
                          ),
                          Expanded(
                            child: TabBarView(children: [
                              /// Daily
                              ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: model.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      children: [
                                        OurText(
                                          fontSize: 10,
                                          text: model[index].number,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      model[index].myImage),
                                                  fit: BoxFit.fill)),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 13,
                                          text: model[index].myName,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const Spacer(),
                                        Image.asset(
                                          height: 15,
                                          width: 15,
                                          diamond_icon,
                                          fit: BoxFit.fill,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 10,
                                          fontBold: FontWeight.w400,
                                          text: model[index].myLike,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),

                              /// Weekly
                              ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: model.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      children: [
                                        OurText(
                                          fontSize: 10,
                                          text: model[index].number,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      model[index].myImage),
                                                  fit: BoxFit.fill)),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 13,
                                          text: model[index].myName,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const Spacer(),
                                        Image.asset(
                                          height: 15,
                                          width: 15,
                                          diamond_icon,
                                          fit: BoxFit.fill,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 10,
                                          fontBold: FontWeight.w400,
                                          text: model[index].myLike,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),

                              /// All Time
                              ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: model.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      children: [
                                        OurText(
                                          fontSize: 10,
                                          text: model[index].number,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      model[index].myImage),
                                                  fit: BoxFit.fill)),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 13,
                                          text: model[index].myName,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const Spacer(),
                                        Image.asset(
                                          height: 15,
                                          width: 15,
                                          diamond_icon,
                                          fit: BoxFit.fill,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 10,
                                          fontBold: FontWeight.w400,
                                          text: model[index].myLike,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),

                    /// Family
                    DefaultTabController(
                      length: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 35,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            child: const TabBar(
                                physics: BouncingScrollPhysics(),
                                dividerColor: Colors.white,
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.grey,
                                labelStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                                unselectedLabelStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                                indicatorColor: Colors.white,
                                tabs: [
                                  Text("Daily"),
                                  Text("Weekly"),
                                  Text("All time"),
                                ]),
                          ),
                          Expanded(
                            child: TabBarView(children: [
                              /// Daily
                              ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: modelfamily.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      children: [
                                        OurText(
                                          fontSize: 10,
                                          text: modelfamily[index].number,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      modelfamily[index]
                                                          .myImage),
                                                  fit: BoxFit.fill)),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 13,
                                          text: modelfamily[index].myName,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const Spacer(),
                                        Image.asset(
                                          height: 15,
                                          width: 15,
                                          diamond_icon,
                                          fit: BoxFit.fill,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 10,
                                          fontBold: FontWeight.w400,
                                          text: modelfamily[index].myLike,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),

                              /// Weekly
                              ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: modelfamily.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      children: [
                                        OurText(
                                          fontSize: 10,
                                          text: modelfamily[index].number,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      modelfamily[index]
                                                          .myImage),
                                                  fit: BoxFit.fill)),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 13,
                                          text: modelfamily[index].myName,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const Spacer(),
                                        Image.asset(
                                          height: 15,
                                          width: 15,
                                          diamond_icon,
                                          fit: BoxFit.fill,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 10,
                                          fontBold: FontWeight.w400,
                                          text: modelfamily[index].myLike,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),

                              /// All Time
                              ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: modelfamily.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      children: [
                                        OurText(
                                          fontSize: 10,
                                          text: modelfamily[index].number,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      modelfamily[index]
                                                          .myImage),
                                                  fit: BoxFit.fill)),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 13,
                                          text: modelfamily[index].myName,
                                          fontBold: FontWeight.w500,
                                        ),
                                        const Spacer(),
                                        Image.asset(
                                          height: 15,
                                          width: 15,
                                          diamond_icon,
                                          fit: BoxFit.fill,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        OurText(
                                          fontSize: 10,
                                          fontBold: FontWeight.w400,
                                          text: modelfamily[index].myLike,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<dynamic> model = [
    LeaderBoardScreenModel(
        myImage: profile, myName: "Nova Queen", myLike: "59,150", number: "1"),
    LeaderBoardScreenModel(
        number: "2", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "3", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "3", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "4", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "5", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "6", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "7", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "8", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "9", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "10", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "11", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "12", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "13", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "14", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "15", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "16", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "17", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "18", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "19", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "20", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "21", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "22", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "23", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "24", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "25", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "26", myImage: profile, myName: "Nova Queen", myLike: "59,150"),
  ];
  List<dynamic> modelfamily = [
    LeaderBoardScreenModel(
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150",
        number: "1"),
    LeaderBoardScreenModel(
        number: "2",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "3",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "3",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "4",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "5",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "6",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "7",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "8",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "9",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "10",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "11",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "12",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "13",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "14",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "15",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "16",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "17",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "18",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "19",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "20",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "21",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "22",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "23",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "24",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "25",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
    LeaderBoardScreenModel(
        number: "26",
        myImage: family_profile,
        myName: "Families Forever",
        myLike: "59,150"),
  ];
}
