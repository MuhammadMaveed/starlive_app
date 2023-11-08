import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starlive_app/views/inbox_screens/inbox_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/images.dart';
import '../../custom_widgets/our_text.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(coin), fit: BoxFit.cover)),
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
                                  image: AssetImage(camera), fit: BoxFit.fill)),
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
              const Divider(
                color: Colors.black,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => InboxScreen(),
                                    ));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(profile),
                                            fit: BoxFit.fill)),
                                  ),
                                  10.widthBox,
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      OurText(
                                        text: "Queen",
                                      ),
                                      OurText(
                                        fontSize: 14,
                                        fontBold: FontWeight.w500,
                                        text: "Hello, How are you?",
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const OurText(
                                    textColor: Colors.grey,
                                    fontSize: 13,
                                    text: "Just Now",
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
            ],
          ),
        ),
      ),
    );
  }
}
