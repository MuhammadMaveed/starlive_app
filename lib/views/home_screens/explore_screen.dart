import 'package:flutter/material.dart';
import 'package:starlive_app/custom_widgets/custom_textformfield.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../consts/lists.dart';
import '../../custom_widgets/our_text.dart';
import '../../live_screens/live_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              child: Scaffold(
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.heightBox,

                    /// AppBarr
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(profile),
                                    fit: BoxFit.cover)),
                          ),
                          5.widthBox,
                          SizedBox(
                            width: context.screenWidth - 170,
                            child: const CustomTextformField(
                              sizeBox: 30,
                              hintText: "Search",
                              textColor: Colors.grey,
                              preIcon: Icon(Icons.search, color: Colors.grey),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(ranking),
                                        fit: BoxFit.fill)),
                              ),
                              10.widthBox,
                              Container(
                                height: 25,
                                width: 25,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(camera),
                                        fit: BoxFit.fill)),
                              ),
                              10.widthBox,
                              Container(
                                height: 25,
                                width: 25,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(notification),
                                        fit: BoxFit.fill)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    5.heightBox,
                    const TabBar(
                      dividerColor:Colors.white ,
                        indicatorColor:Colors.white ,
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 10),
                        labelStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                        tabAlignment: TabAlignment.start,
                        indicatorSize: TabBarIndicatorSize.label,
                        unselectedLabelColor: Colors.grey,

                        labelColor: pinkColor,
                        tabs: [
                          Tab(text: "New"),
                          Tab(text: "Artist"),
                          Tab(text: "Nearby"),
                          Tab(text: "Populer"),
                          Tab(text: "Rising Star"),
                        ]),
                    Expanded(
                      child: TabBarView(children: [
                        Scaffold(
                          floatingActionButtonLocation:
                              FloatingActionButtonLocation.centerDocked,
                          floatingActionButton: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: pinkColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                  child: Icon(Icons.emergency_recording_rounded,
                                      color: Colors.white)),
                            ),
                          ),
                          body: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: foryouScreenImages.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 2 / 3,
                                          mainAxisSpacing: 5,
                                          crossAxisSpacing: 5,
                                          crossAxisCount: 2),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  foryouScreenImages[index]),
                                              fit: BoxFit.fill)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(Icons.visibility,
                                                    color: Colors.white,
                                                    size: 18),
                                                5.widthBox,
                                                const OurText(
                                                  text: "457",
                                                  fontSize: 10,
                                                  textColor: Colors.white,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  model_img),
                                                              fit:
                                                                  BoxFit.fill)),
                                                ),
                                                5.widthBox,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const OurText(
                                                      text: "Nova Queen",
                                                      fontSize: 12,
                                                      textColor: Colors.white,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 12,
                                                          width: 12,
                                                          decoration: const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      diamond),
                                                                  fit: BoxFit
                                                                      .fill)),
                                                        ),
                                                        3.widthBox,
                                                        const OurText(
                                                          text: "25.7k",
                                                          fontSize: 10,
                                                          textColor:
                                                              Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Scaffold(
                          floatingActionButtonLocation:
                              FloatingActionButtonLocation.centerDocked,
                          floatingActionButton: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: pinkColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                  child: Icon(Icons.emergency_recording_rounded,
                                      color: Colors.white)),
                            ),
                          ),
                          body: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: foryouScreenImages.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 2 / 3,
                                          mainAxisSpacing: 5,
                                          crossAxisSpacing: 5,
                                          crossAxisCount: 2),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  foryouScreenImages[index]),
                                              fit: BoxFit.fill)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(Icons.visibility,
                                                    color: Colors.white,
                                                    size: 18),
                                                5.widthBox,
                                                const OurText(
                                                  text: "457",
                                                  fontSize: 10,
                                                  textColor: Colors.white,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  model_img),
                                                              fit:
                                                                  BoxFit.fill)),
                                                ),
                                                5.widthBox,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const OurText(
                                                      text: "Nova Queen",
                                                      fontSize: 12,
                                                      textColor: Colors.white,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 12,
                                                          width: 12,
                                                          decoration: const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      diamond),
                                                                  fit: BoxFit
                                                                      .fill)),
                                                        ),
                                                        3.widthBox,
                                                        const OurText(
                                                          text: "25.7k",
                                                          fontSize: 10,
                                                          textColor:
                                                              Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Scaffold(
                          floatingActionButtonLocation:
                              FloatingActionButtonLocation.centerDocked,
                          floatingActionButton: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LiveScreen(),
                                    ));
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  color: pinkColor,
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                    child: Icon(Icons.emergency_recording_rounded,
                                        color: Colors.white)),
                              ),
                            ),
                          ),
                          body: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(flag_img),
                                              fit: BoxFit.fill)),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const OurText(
                                      fontBold: FontWeight.w400,
                                      fontSize: 12,
                                      textColor: Colors.grey,
                                      text: "United States",
                                    ),
                                    const Spacer(),
                                    const OurText(
                                      fontBold: FontWeight.w400,
                                      fontSize: 12,
                                      textColor: Colors.black,
                                      text: "Change",
                                    ),

                                    const Icon(
                                        size: 15,
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.black),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: foryouScreenImages.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 2 / 3,
                                          mainAxisSpacing: 5,
                                          crossAxisSpacing: 5,
                                          crossAxisCount: 2),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  foryouScreenImages[index]),
                                              fit: BoxFit.fill)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(Icons.visibility,
                                                    color: Colors.white,
                                                    size: 18),
                                                5.widthBox,
                                                const OurText(
                                                  text: "457",
                                                  fontSize: 10,
                                                  textColor: Colors.white,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  model_img),
                                                              fit:
                                                                  BoxFit.fill)),
                                                ),
                                                5.widthBox,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const OurText(
                                                      text: "Nova Queen",
                                                      fontSize: 12,
                                                      textColor: Colors.white,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 12,
                                                          width: 12,
                                                          decoration: const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      diamond),
                                                                  fit: BoxFit
                                                                      .fill)),
                                                        ),
                                                        3.widthBox,
                                                        const OurText(
                                                          text: "25.7k",
                                                          fontSize: 10,
                                                          textColor:
                                                              Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Scaffold(
                          floatingActionButtonLocation:
                              FloatingActionButtonLocation.centerDocked,
                          floatingActionButton: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: pinkColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                  child: Icon(Icons.emergency_recording_rounded,
                                      color: Colors.white)),
                            ),
                          ),
                          body: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: foryouScreenImages.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 2 / 3,
                                          mainAxisSpacing: 5,
                                          crossAxisSpacing: 5,
                                          crossAxisCount: 2),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  foryouScreenImages[index]),
                                              fit: BoxFit.fill)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(Icons.visibility,
                                                    color: Colors.white,
                                                    size: 18),
                                                5.widthBox,
                                                const OurText(
                                                  text: "457",
                                                  fontSize: 10,
                                                  textColor: Colors.white,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  model_img),
                                                              fit:
                                                                  BoxFit.fill)),
                                                ),
                                                5.widthBox,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const OurText(
                                                      text: "Nova Queen",
                                                      fontSize: 12,
                                                      textColor: Colors.white,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 12,
                                                          width: 12,
                                                          decoration: const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      diamond),
                                                                  fit: BoxFit
                                                                      .fill)),
                                                        ),
                                                        3.widthBox,
                                                        const OurText(
                                                          text: "25.7k",
                                                          fontSize: 10,
                                                          textColor:
                                                              Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Scaffold(
                          floatingActionButtonLocation:
                              FloatingActionButtonLocation.centerDocked,
                          floatingActionButton: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: pinkColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                  child: Icon(Icons.emergency_recording_rounded,
                                      color: Colors.white)),
                            ),
                          ),
                          body: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: foryouScreenImages.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 2 / 3,
                                          mainAxisSpacing: 5,
                                          crossAxisSpacing: 5,
                                          crossAxisCount: 2),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  foryouScreenImages[index]),
                                              fit: BoxFit.fill)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(Icons.visibility,
                                                    color: Colors.white,
                                                    size: 18),
                                                5.widthBox,
                                                const OurText(
                                                  text: "457",
                                                  fontSize: 10,
                                                  textColor: Colors.white,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  model_img),
                                                              fit:
                                                                  BoxFit.fill)),
                                                ),
                                                5.widthBox,
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const OurText(
                                                      text: "Nova Queen",
                                                      fontSize: 12,
                                                      textColor: Colors.white,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 12,
                                                          width: 12,
                                                          decoration: const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      diamond),
                                                                  fit: BoxFit
                                                                      .fill)),
                                                        ),
                                                        3.widthBox,
                                                        const OurText(
                                                          text: "25.7k",
                                                          fontSize: 10,
                                                          textColor:
                                                              Colors.white,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
