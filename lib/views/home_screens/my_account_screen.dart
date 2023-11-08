import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starlive_app/consts/lists.dart';
import 'package:starlive_app/custom_widgets/our_text.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/images.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const OurText(text: "My Account", fontSize: 18),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 10),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.heightBox,
                /// Profile Image
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(profile), fit: BoxFit.fill)),
                    ),
                    10.widthBox,
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OurText(
                          text: "Queen",
                        ),
                        OurText(
                          textColor: Colors.grey,
                          fontSize: 14,
                          fontBold: FontWeight.w500,
                          text: "@novaqueen678",
                        ),
                      ],
                    ),
                  ],
                ),

                /// Special Programs
                15.heightBox,
                const OurText(
                  fontSize: 12,
                  textColor: Colors.grey,
                  text: "Special Programs",
                ),
                10.heightBox,
                ListView.builder(
                  itemCount: specialProgram.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(specialProgram[index]),
                                    fit: BoxFit.fill)),
                          ),
                          10.widthBox,
                          OurText(
                            fontSize: 14,
                            fontBold: FontWeight.w500,
                            text: specialProgramStrings[index],
                          ),
                        ],
                      ),
                    );
                  },
                ),

                /// Settings
                10.heightBox,
                const OurText(
                  fontSize: 12,
                  textColor: Colors.grey,
                  text: "Settings",
                ),
                10.heightBox,
                ListView.builder(
                  itemCount: settingList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(settingList[index]),
                                    fit: BoxFit.fill)),
                          ),
                          10.widthBox,
                          OurText(
                            fontSize: 14,
                            fontBold: FontWeight.w500,
                            text: specialProgramStrings[index],
                          ),
                        ],
                      ),
                    );
                  },
                ),

                /// Creator Tools
                10.heightBox,
                const OurText(
                  fontSize: 12,
                  textColor: Colors.grey,
                  text: "Settings",
                ),
                10.heightBox,
                ListView.builder(
                  itemCount: creatorTools.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(creatorTools[index]),
                                    fit: BoxFit.fill)),
                          ),
                          10.widthBox,
                          OurText(
                            fontSize: 14,
                            fontBold: FontWeight.w500,
                            text: creatorToolsStrings[index],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                20.heightBox,
                /// Log Out
                Row(
                  children: [
                    const Icon(
                      Icons.login,
                      color: Colors.black,
                      size: 25,
                    ),
                    10.widthBox,
                    const OurText(
                      fontSize: 14,
                      fontBold: FontWeight.w500,
                      text:"Log out",
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
