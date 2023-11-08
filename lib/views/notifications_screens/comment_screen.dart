import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../consts/images.dart';
import '../../custom_widgets/our_text.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Comment"),
        actions: const [
          Icon(Icons.add_circle_outline),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SafeArea(
                child: Column(
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
                            image: AssetImage(street_img), fit: BoxFit.fill),
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
                          Image.asset(comment_img,
                              height: 18, width: 18, fit: BoxFit.fill),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: OurText(
                        fontBold: FontWeight.w500,
                        fontSize: 10,
                        text: "2 comments",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              const EdgeInsets.only(top: 5, bottom: 5, left: 5),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(profile),
                                        fit: BoxFit.fill)),
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  OurText(
                                    text: "Janet singh ",
                                    textColor: Colors.grey,
                                    fontSize: 10,
                                    fontBold: FontWeight.w400,
                                  ),
                                  OurText(
                                    text: "Yes it was",
                                    fontSize: 10,
                                    fontBold: FontWeight.w400,
                                  ),
                                  OurText(
                                    text: "2 days ago, 9:30 PM",
                                    textColor: Colors.grey,
                                    fontSize: 10,
                                    fontBold: FontWeight.w400,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      backgroundColor: Colors.white,
                                      context: context,
                                      builder: (context) {
                                        return SizedBox(
                                          height: 80,
                                          width: double.infinity,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                               top: 20,left: 10,right: 10,bottom: 10),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(block_img,
                                                        height: 20,
                                                        width: 20,
                                                        fit: BoxFit.fill),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const OurText(
                                                      text: "Block User",
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    Image.asset(speaker_img,
                                                        height: 20,
                                                        width: 20,
                                                        fit: BoxFit.fill),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const OurText(
                                                      text: "Report",
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: const Icon(Icons.more_vert_outlined)),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

            /// Search Barrr
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                height: 75,
                width: double.infinity,
                child: Column(
                  children: [
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, left: 12, right: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffD9D9D9),
                        ),
                        child: TextFormField(
                          controller: _searchController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: "Type a comment",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
