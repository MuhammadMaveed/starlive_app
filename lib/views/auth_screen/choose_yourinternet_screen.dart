import 'package:flutter/material.dart';
import 'package:starlive_app/consts/images.dart';
import 'package:starlive_app/custom_widgets/our_button.dart';
import 'package:starlive_app/custom_widgets/our_text.dart';
import 'package:velocity_x/velocity_x.dart';

class ChooseYourInternet extends StatefulWidget {
  const ChooseYourInternet({super.key});

  @override
  State<ChooseYourInternet> createState() => _ChooseYourInternetState();
}

class _ChooseYourInternetState extends State<ChooseYourInternet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              0.heightBox,
              const OurText(
                text: "Choose your Interests",
                fontSize: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(artist),
                                    fit: BoxFit.cover)),
                          ),
                          5.heightBox,
                          const OurText(
                            text: "Artist",
                            fontSize: 15,
                            fontBold: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(dating),
                                    fit: BoxFit.cover)),
                          ),
                          5.heightBox,
                          const OurText(
                            text: "Dating",
                            fontSize: 15,
                            fontBold: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(nearby),
                                    fit: BoxFit.cover)),
                          ),
                          5.heightBox,
                          const OurText(
                            text: "Nearby",
                            fontSize: 15,
                            fontBold: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: context.screenWidth-60,
                child: const OurButton(
                  text: "Continue",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
