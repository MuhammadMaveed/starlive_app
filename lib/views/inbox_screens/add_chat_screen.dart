import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starlive_app/consts/images.dart';
import 'package:starlive_app/custom_widgets/our_text.dart';

class AddChat extends StatefulWidget {
  const AddChat({super.key});

  @override
  State<AddChat> createState() => _AddChatState();
}

class _AddChatState extends State<AddChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("New Message"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            /// Search Barr
            SizedBox(
              height: 40,
              width: double.infinity,
              child: TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(20)),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding: EdgeInsets.only(bottom: 5, top: 5),
                    filled: true,
                    border: InputBorder.none,
                    fillColor: Colors.grey[200],
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Image.asset(invite_friend_icon,
                    width: 25, height: 25, fit: BoxFit.fill),
                SizedBox(
                  width: 20,
                ),
                OurText(
                  fontBold: FontWeight.bold,
                  fontSize: 16,
                  textColor: Color(0xffF72A85),
                  text: "Invite Friend",
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Image.asset(group_friend_icon,
                    width: 25, height: 25, fit: BoxFit.fill),
                SizedBox(
                  width: 25,
                ),
                OurText(
                  fontBold: FontWeight.bold,
                  fontSize: 16,
                  textColor: Color(0xffF72A85),
                  text: "New Group",
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Image.asset(pink_gift_icon,
                    width: 25, height: 25, fit: BoxFit.fill),
                SizedBox(
                  width: 20,
                ),
                OurText(
                  fontBold: FontWeight.bold,
                  fontSize: 16,
                  textColor: Color(0xffF72A85),
                  text: "Premium Message",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
