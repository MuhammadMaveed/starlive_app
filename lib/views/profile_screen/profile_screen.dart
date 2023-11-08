import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starlive_app/consts/colors.dart';
import 'package:starlive_app/consts/images.dart';
import 'package:starlive_app/custom_widgets/our_button.dart';
import 'package:starlive_app/custom_widgets/our_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("@queen567"),
          actions: [
            const Icon(Icons.more_vert_outlined),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: pinkColor),
                          image: const DecorationImage(
                              image: AssetImage(profile), fit: BoxFit.fill)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OurText(
                          fontBold: FontWeight.w500,
                          fontSize: 15,
                          text: "Nova Queen",
                        ),
                        OurText(
                          fontSize: 13,
                          fontBold: FontWeight.w500,
                          text: "No***",
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const OurText(
                          fontSize: 12,
                          text: "732.67K",
                        ),
                        Row(
                          children: [
                            Image.asset(diamond_icon,
                                height: 12, width: 12, fit: BoxFit.fill),
                            const SizedBox(
                              width: 3,
                            ),
                            const OurText(
                              text: "Earned",
                              fontSize: 10,
                              textColor: Colors.grey,
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
                          text: "Followers",
                          fontSize: 10,
                          textColor: Colors.grey,
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
                          textColor: Colors.grey,
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
                            color: pinkColor,
                            borderRadius: BorderRadius.circular(20)),
                        height: 40,
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              OurText(
                                textColor: Colors.white,
                                fontSize: 15,
                                fontBold: FontWeight.w500,
                                text: "Follow",
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
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 2),
                            blurRadius: 2,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(comment_img,
                              height: 17, width: 17, fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 2),
                            blurRadius: 2,
                            spreadRadius: 2,
                          ),
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(gift,
                              height: 17, width: 17, fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.grey,
                    indicatorColor: Colors.black,
                    tabs: [
                      Column(
                        children: [
                          Image.asset(all_icon,
                              fit: BoxFit.fill, height: 15, width: 15),
                          const SizedBox(
                            height: 2,
                          ),
                          const OurText(
                            textColor: Colors.grey,
                            text: "All",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(image_icon,
                              fit: BoxFit.fill, height: 15, width: 15),
                          const SizedBox(
                            height: 2,
                          ),
                          const OurText(
                            textColor: Colors.grey,
                            text: "Moments",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(card_icon,
                              fit: BoxFit.fill, height: 15, width: 15),
                          const SizedBox(
                            height: 2,
                          ),
                          const OurText(
                            textColor: Colors.grey,
                            text: "Cards",
                          ),
                        ],
                      ),
                    ]),
                Expanded(
                    child: TabBarView(children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 20,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 100,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            image: DecorationImage(
                              image: AssetImage(model_img),
                              fit: BoxFit.fill,
                            )),
                      );
                    },
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 20,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 100,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            image: DecorationImage(
                              image: AssetImage(model_img),
                              fit: BoxFit.fill,
                            )),
                      );
                    },
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 20,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 100,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            image: DecorationImage(
                              image: AssetImage(model_img),
                              fit: BoxFit.fill,
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
    );
  }
}
