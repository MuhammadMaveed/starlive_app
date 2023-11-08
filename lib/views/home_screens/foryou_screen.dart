import 'package:flutter/material.dart';
import 'package:starlive_app/consts/colors.dart';
import 'package:starlive_app/consts/images.dart';
import 'package:starlive_app/consts/lists.dart';
import 'package:starlive_app/custom_widgets/our_text.dart';
import 'package:starlive_app/live_screens/live_screen.dart';
import 'package:starlive_app/views/home_screens/my_account_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class ForYouScreen extends StatefulWidget {
  const ForYouScreen({super.key});

  @override
  State<ForYouScreen> createState() => _ForYouScreenState();
}

class _ForYouScreenState extends State<ForYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LiveScreen(),
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                10.heightBox,

                /// AppBarr
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MyAccount(),
                                  ));
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(profile),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          5.widthBox,
                          Container(
                            height: 15,
                            width: 15,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(coin),
                                    fit: BoxFit.cover)),
                          ),
                          const OurText(
                            text: "0",
                          ),
                        ],
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
                10.heightBox,

                /// GridView
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: foryouScreenImages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2 / 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(foryouScreenImages[index]),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.visibility,
                                    color: Colors.white, size: 18),
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
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(model_img),
                                          fit: BoxFit.fill)),
                                ),
                                5.widthBox,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(diamond),
                                                  fit: BoxFit.fill)),
                                        ),
                                        3.widthBox,
                                        const OurText(
                                          text: "25.7k",
                                          fontSize: 10,
                                          textColor: Colors.white,
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
      ),
    );
  }
}
