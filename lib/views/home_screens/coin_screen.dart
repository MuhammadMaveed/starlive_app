import 'package:flutter/material.dart';
import 'package:starlive_app/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';

import '../../consts/images.dart';
import '../../custom_widgets/our_text.dart';

class CoinScreen extends StatefulWidget {
  const CoinScreen({super.key});

  @override
  State<CoinScreen> createState() => _CoinScreenState();
}

class _CoinScreenState extends State<CoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5,),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const OurText(
                        text: "Novaqueen’s balance",
                        fontSize: 20,
                        fontBold: FontWeight.bold,
                      ),

                      /// Coin Container
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: blueColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const OurText(
                                fontBold: FontWeight.bold,
                                fontSize: 16,
                                text: "Coins",
                                textColor: Colors.white,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(coin),
                                            fit: BoxFit.fill)),
                                  ),
                                  5.widthBox,
                                  const OurText(
                                    fontBold: FontWeight.bold,
                                    fontSize: 24,
                                    text: "5,789",
                                    textColor: Colors.white,
                                  ),
                                  const Spacer(),
                                  OurText(
                                    fontBold: FontWeight.bold,
                                    fontSize: 16,
                                    text: "Get Coins >",
                                    textColor: Colors.grey[100],
                                  ),
                                ],
                              ),
                              15.heightBox,
                              const Divider(
                                color: Colors.white,
                              ),
                              IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              OurText(
                                                fontBold: FontWeight.bold,
                                                fontSize: 16,
                                                text: "LIVE rewards",
                                                textColor: Colors.grey[100],
                                              ),
                                              Row(
                                                children: [
                                                  OurText(
                                                    fontBold: FontWeight.bold,
                                                    fontSize: 16,
                                                    text: "USD",
                                                    textColor: Colors.grey[100],
                                                  ),
                                                  10.widthBox,
                                                  OurText(
                                                    fontBold: FontWeight.bold,
                                                    fontSize: 20,
                                                    text: "0",
                                                    textColor: Colors.grey[100],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Icon(Icons.arrow_forward_ios_rounded,
                                              color: Colors.grey[100]),
                                        ],
                                      ),
                                    ),
                                    const VerticalDivider(
                                      color: Colors.white,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          OurText(
                                            fontBold: FontWeight.bold,
                                            fontSize: 16,
                                            text: "Others",
                                            textColor: Colors.grey[100],
                                          ),
                                          const Spacer(),
                                          Icon(Icons.arrow_forward_ios_rounded,
                                              color: Colors.grey[100]),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      10.heightBox,
                      const OurText(
                        text: "Services",
                        fontSize: 16,
                        fontBold: FontWeight.bold,
                      ),
                      10.heightBox,
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: Colors.black),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.calendar_month_rounded),
                                    10.heightBox,
                                    const OurText(
                                      text: "Transaction",
                                      fontBold: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          10.widthBox,
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: Colors.black),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.question_mark),
                                    10.heightBox,
                                    const OurText(
                                      text: "Help & Feedback",
                                      fontBold: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
