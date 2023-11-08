import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starlive_app/consts/images.dart';
import 'package:starlive_app/custom_widgets/our_text.dart';
import 'package:starlive_app/views/notifications_screens/comment_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text("Feed"),
          actions: const [
            Icon(Icons.add_circle_outline),
            SizedBox(width: 10,),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              const TabBar(
                  dividerColor: Colors.white,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  unselectedLabelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  indicatorColor: Colors.white,
                  tabs: [
                    Text("All"),
                    Text("For Fans"),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(profile),
                                          fit: BoxFit.fill)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    OurText(
                                      fontSize: 13,
                                      fontBold: FontWeight.w500,
                                      text: "Novaqueen",
                                    ),
                                    OurText(
                                      textColor: Colors.grey,
                                      fontSize: 10,
                                      fontBold: FontWeight.w400,
                                      text: "2 days ago, 11:47 AM",
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const Icon(Icons.more_vert_outlined),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 300,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(street_img),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(favrite_img,
                                    height: 18, width: 18, fit: BoxFit.fill),
                                const SizedBox(
                                  width: 8,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const CommentScreen(),
                                        ));
                                  },
                                  child: Image.asset(comment_img,
                                      height: 18, width: 18, fit: BoxFit.fill),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Image.asset(share_img,
                                    height: 18, width: 18, fit: BoxFit.fill),
                                const Spacer(),
                                Image.asset(gift_img,
                                    height: 30, width: 30, fit: BoxFit.fill),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const OurText(
                            fontSize: 14,
                            fontBold: FontWeight.w400,
                            text:
                                "The game in Japan was amazing and I want to share some photos",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              /// Stack
                              SizedBox(
                                width: 50,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(profile),
                                              fit: BoxFit.fill)),
                                    ),
                                    Positioned(
                                      left: 20,
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(profile),
                                                fit: BoxFit.fill)),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 2,
                                      right: 1,
                                      child: Container(
                                        height: 10,
                                        width: 10,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(favrite_img),
                                                fit: BoxFit.fill)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const OurText(
                                fontBold: FontWeight.w500,
                                fontSize: 10,
                                text: " 6 likes",
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const OurText(
                            fontBold: FontWeight.w500,
                            fontSize: 10,
                            text: "Show All Comments (2)",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ],
                      );
                    },
                  ),
                  Container(
                    color: Colors.grey,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
