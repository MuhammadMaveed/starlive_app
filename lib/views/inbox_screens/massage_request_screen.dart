import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starlive_app/consts/images.dart';
import 'package:starlive_app/custom_widgets/our_text.dart';

class MessageRequestScreen extends StatefulWidget {
  const MessageRequestScreen({super.key});

  @override
  State<MessageRequestScreen> createState() => _MessageRequestScreenState();
}

class _MessageRequestScreenState extends State<MessageRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Message Requests"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(message_request_icon,
                  fit: BoxFit.fill, width: 50, height: 50),
              SizedBox(
                height: 10,
              ),
              OurText(
                fontBold: FontWeight.w500,
                fontSize: 16,
                text: "No Message Reqest",
              ),
              OurText(
                fontBold: FontWeight.w400,
                fontSize: 16,
                text: "You currently have no message requests.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
