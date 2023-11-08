import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starlive_app/consts/colors.dart';
import 'package:starlive_app/consts/images.dart';
import 'package:starlive_app/custom_widgets/our_text.dart';
import 'package:starlive_app/views/profile_screen/profile_screen.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(model_img),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.visibility, color: Colors.white),
                        OurText(
                          fontSize: 12,
                          textColor: Colors.white,
                          text: "567",
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        Icon(Icons.share, color: Colors.white),
                        OurText(
                          fontSize: 12,
                          textColor: Colors.white,
                          text: "967",
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image.asset(comment_white_icon,
                                  width: 25, height: 25, fit: BoxFit.fill),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff000000),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        height: 500,
                                        width: double.infinity,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: DefaultTabController(
                                            length: 3,
                                            child: Scaffold(
                                              backgroundColor: Colors.white,
                                              body: SafeArea(
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 16,
                                                      vertical: 10),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          const Text(
                                                              "@queen567"),
                                                          Spacer(),
                                                          const Icon(Icons
                                                              .more_vert_outlined),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        ProfileScreen(),
                                                              ));
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              height: 60,
                                                              width: 60,
                                                              decoration: BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  border: Border
                                                                      .all(
                                                                          color:
                                                                              pinkColor),
                                                                  image: const DecorationImage(
                                                                      image: AssetImage(
                                                                          profile),
                                                                      fit: BoxFit
                                                                          .fill)),
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            const Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                OurText(
                                                                  fontBold:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 15,
                                                                  text:
                                                                      "Nova Queen",
                                                                ),
                                                                OurText(
                                                                  fontSize: 13,
                                                                  fontBold:
                                                                      FontWeight
                                                                          .w500,
                                                                  text: "No***",
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              const OurText(
                                                                fontSize: 12,
                                                                text: "732.67K",
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Image.asset(
                                                                      diamond_icon,
                                                                      height:
                                                                          12,
                                                                      width: 12,
                                                                      fit: BoxFit
                                                                          .fill),
                                                                  const SizedBox(
                                                                    width: 3,
                                                                  ),
                                                                  const OurText(
                                                                    text:
                                                                        "Earned",
                                                                    fontSize:
                                                                        10,
                                                                    textColor:
                                                                        Colors
                                                                            .grey,
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                            width: 20,
                                                          ),
                                                          const Column(
                                                            children: [
                                                              OurText(
                                                                fontSize: 12,
                                                                text: "32.67K",
                                                              ),
                                                              SizedBox(
                                                                width: 3,
                                                              ),
                                                              OurText(
                                                                text:
                                                                    "Followers",
                                                                fontSize: 10,
                                                                textColor:
                                                                    Colors.grey,
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                            width: 20,
                                                          ),
                                                          const Column(
                                                            children: [
                                                              OurText(
                                                                fontSize: 12,
                                                                text: "4",
                                                              ),
                                                              SizedBox(
                                                                width: 3,
                                                              ),
                                                              OurText(
                                                                text: "Fans",
                                                                fontSize: 10,
                                                                textColor:
                                                                    Colors.grey,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 2,
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      pinkColor,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                              height: 40,
                                                              child:
                                                                  const Center(
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Icon(
                                                                      Icons.add,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    SizedBox(
                                                                      width: 5,
                                                                    ),
                                                                    OurText(
                                                                      textColor:
                                                                          Colors
                                                                              .white,
                                                                      fontSize:
                                                                          15,
                                                                      fontBold:
                                                                          FontWeight
                                                                              .w500,
                                                                      text:
                                                                          "Follow",
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration:
                                                                const BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              shape: BoxShape
                                                                  .circle,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors
                                                                      .grey,
                                                                  offset:
                                                                      Offset(
                                                                          2, 2),
                                                                  blurRadius: 2,
                                                                  spreadRadius:
                                                                      2,
                                                                ),
                                                              ],
                                                            ),
                                                            child: Center(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        8.0),
                                                                child: Image.asset(
                                                                    comment_img,
                                                                    height: 17,
                                                                    width: 17,
                                                                    fit: BoxFit
                                                                        .fill),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration:
                                                                const BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors
                                                                      .grey,
                                                                  offset:
                                                                      Offset(
                                                                          2, 2),
                                                                  blurRadius: 2,
                                                                  spreadRadius:
                                                                      2,
                                                                ),
                                                              ],
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Center(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        8.0),
                                                                child: Image.asset(
                                                                    gift,
                                                                    height: 17,
                                                                    width: 17,
                                                                    fit: BoxFit
                                                                        .fill),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      TabBar(
                                                          indicatorSize:
                                                              TabBarIndicatorSize
                                                                  .tab,
                                                          dividerColor:
                                                              Colors.grey,
                                                          indicatorColor:
                                                              Colors.black,
                                                          tabs: [
                                                            Column(
                                                              children: [
                                                                Image.asset(
                                                                    all_icon,
                                                                    fit: BoxFit
                                                                        .fill,
                                                                    height: 15,
                                                                    width: 15),
                                                                const SizedBox(
                                                                  height: 2,
                                                                ),
                                                                const OurText(
                                                                  textColor:
                                                                      Colors
                                                                          .grey,
                                                                  text: "All",
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              children: [
                                                                Image.asset(
                                                                    image_icon,
                                                                    fit: BoxFit
                                                                        .fill,
                                                                    height: 15,
                                                                    width: 15),
                                                                const SizedBox(
                                                                  height: 2,
                                                                ),
                                                                const OurText(
                                                                  textColor:
                                                                      Colors
                                                                          .grey,
                                                                  text:
                                                                      "Moments",
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              children: [
                                                                Image.asset(
                                                                    card_icon,
                                                                    fit: BoxFit
                                                                        .fill,
                                                                    height: 15,
                                                                    width: 15),
                                                                const SizedBox(
                                                                  height: 2,
                                                                ),
                                                                const OurText(
                                                                  textColor:
                                                                      Colors
                                                                          .grey,
                                                                  text: "Cards",
                                                                ),
                                                              ],
                                                            ),
                                                          ]),
                                                      Expanded(
                                                          child: TabBarView(
                                                              children: [
                                                            GridView.builder(
                                                              shrinkWrap: true,
                                                              physics:
                                                                  const BouncingScrollPhysics(),
                                                              itemCount: 20,
                                                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                                  mainAxisExtent:
                                                                      100,
                                                                  mainAxisSpacing:
                                                                      5,
                                                                  crossAxisSpacing:
                                                                      5,
                                                                  crossAxisCount:
                                                                      3),
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                return Container(
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                          color: Colors
                                                                              .redAccent,
                                                                          image:
                                                                              DecorationImage(
                                                                            image:
                                                                                AssetImage(model_img),
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          )),
                                                                );
                                                              },
                                                            ),
                                                            GridView.builder(
                                                              shrinkWrap: true,
                                                              physics:
                                                                  const BouncingScrollPhysics(),
                                                              itemCount: 20,
                                                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                                  mainAxisExtent:
                                                                      100,
                                                                  mainAxisSpacing:
                                                                      5,
                                                                  crossAxisSpacing:
                                                                      5,
                                                                  crossAxisCount:
                                                                      3),
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                return Container(
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                          color: Colors
                                                                              .redAccent,
                                                                          image:
                                                                              DecorationImage(
                                                                            image:
                                                                                AssetImage(model_img),
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          )),
                                                                );
                                                              },
                                                            ),
                                                            GridView.builder(
                                                              shrinkWrap: true,
                                                              physics:
                                                                  const BouncingScrollPhysics(),
                                                              itemCount: 20,
                                                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                                  mainAxisExtent:
                                                                      100,
                                                                  mainAxisSpacing:
                                                                      5,
                                                                  crossAxisSpacing:
                                                                      5,
                                                                  crossAxisCount:
                                                                      3),
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                return Container(
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                          color: Colors
                                                                              .redAccent,
                                                                          image:
                                                                              DecorationImage(
                                                                            image:
                                                                                AssetImage(model_img),
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          )),
                                                                );
                                                              },
                                                            ),
                                                          ])),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(model_img),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: pinkColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    color: Colors.white,
                                    Icons.add,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Center(
                          child: Image.asset(gift,
                              fit: BoxFit.fill, height: 20, width: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
