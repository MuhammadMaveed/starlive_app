import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starlive_app/consts/images.dart';
import 'package:starlive_app/custom_widgets/our_button.dart';
import 'package:starlive_app/custom_widgets/our_text.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(profile), fit: BoxFit.fill)),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OurText(
                  fontBold: FontWeight.w500,
                  fontSize: 14,
                  text: "Nova Queen",
                ),
                OurText(
                  fontBold: FontWeight.w400,
                  fontSize: 12,
                  text: "Last seen recently",
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Divider(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 70,
              child: Column(
                children: [
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(gallery_icon_inbox),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                          ),
                          child: Center(
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 10, bottom: 10),
                                border: InputBorder.none,
                                hintText: "Message....",
                              ),
                            ),
                          ),
                        )),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(video_icon_inbox),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(voice_icon_inbox),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  height: 150,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 25,
                                      left: 10,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(gallery_icon_inbox,
                                                fit: BoxFit.fill,
                                                height: 20,
                                                width: 22),
                                            SizedBox(width: 13),
                                            OurText(
                                              fontBold: FontWeight.w500,
                                              fontSize: 14,
                                              text: "Media",
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.person_outline),
                                            SizedBox(width: 10),
                                            OurText(
                                              fontBold: FontWeight.w500,
                                              fontSize: 14,
                                              text: "View Profile",
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return Container(
                                                    height: 180,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10,
                                                              right: 10,
                                                              top: 20,
                                                              bottom: 10),
                                                      child: Column(
                                                        children: [
                                                          OurText(
                                                            fontSize: 15,
                                                            fontBold:
                                                                FontWeight.w500,
                                                            text: "Delete Chat",
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          OurText(
                                                            fontSize: 10,
                                                            fontBold:
                                                                FontWeight.w500,
                                                            text:
                                                                "Are you sure you want to delete the chat with Nova Queen?",
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          SizedBox(
                                                              height: 40,
                                                              child: OurButton(
                                                                text:
                                                                    "Delete Chat",
                                                              )),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          SizedBox(
                                                              height: 40,
                                                              child: OurButton(
                                                                textColor:
                                                                    Colors
                                                                        .black,
                                                                borderColor:
                                                                    Colors
                                                                        .black,
                                                                backgroundColor:
                                                                    Colors
                                                                        .white,
                                                                text: "Cancel",
                                                              )),
                                                        ],
                                                      ),
                                                    ));
                                              },
                                            );
                                          },
                                          child: Row(
                                            children: [
                                              Icon(Icons
                                                  .delete_outline_outlined),
                                              SizedBox(width: 10),
                                              OurText(
                                                fontBold: FontWeight.w500,
                                                fontSize: 14,
                                                text: "Delete",
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return Container(
                                                    height: 180,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10,
                                                              right: 10,
                                                              top: 20,
                                                              bottom: 10),
                                                      child: Column(
                                                        children: [
                                                          OurText(
                                                            fontSize: 15,
                                                            fontBold:
                                                                FontWeight.w500,
                                                            text: "Block User",
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          OurText(
                                                            fontSize: 10,
                                                            fontBold:
                                                                FontWeight.w500,
                                                            text:
                                                                "Are you sure you want to block Nova Queen?",
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          SizedBox(
                                                              height: 40,
                                                              child: OurButton(
                                                                text:
                                                                    "Block user",
                                                              )),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          SizedBox(
                                                              height: 40,
                                                              child: OurButton(
                                                                textColor:
                                                                    Colors
                                                                        .black,
                                                                borderColor:
                                                                    Colors
                                                                        .black,
                                                                backgroundColor:
                                                                    Colors
                                                                        .white,
                                                                text: "Cancel",
                                                              )),
                                                        ],
                                                      ),
                                                    ));
                                              },
                                            );
                                          },
                                          child: Row(
                                            children: [
                                              Icon(Icons.block_outlined),
                                              SizedBox(width: 10),
                                              OurText(
                                                fontBold: FontWeight.w500,
                                                fontSize: 14,
                                                text: "Block user",
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(gift), fit: BoxFit.fill)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// SizedBox(
// height: 70,
// child: Column(
// children: [
// Divider(),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 10),
// child: Row(
// children: [
// Container(
// height: 20,
// width: 20,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(gallery_icon_inbox),
// fit: BoxFit.fill)),
// ),
// SizedBox(width: 5,),
// Expanded(
// child: Container(
// height: 40,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: Colors.grey[200],
// ),
// child:Center(
// child: TextFormField(
// decoration: InputDecoration(
//
// contentPadding: EdgeInsets.only(left: 10,bottom: 10),
// border: InputBorder.none,
// hintText: "Message....",
// ),
// ),
// ) ,
// )),
// SizedBox(width: 5,),
// Container(
// height: 20,
// width: 20,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(video_icon_inbox),
// fit: BoxFit.fill)),
// ),
// SizedBox(width: 5,),
// Container(
// height: 20,
// width: 20,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(voice_icon_inbox),
// fit: BoxFit.fill)),
// ),
// SizedBox(width: 5,),
// Container(
// height: 20,
// width: 20,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(gift),
// fit: BoxFit.fill)),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
