import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class NotificationScreenTwo extends StatefulWidget {
  const NotificationScreenTwo({super.key});

  @override
  State<NotificationScreenTwo> createState() => _NotificationScreenTwoState();
}

class _NotificationScreenTwoState extends State<NotificationScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.arrow_back) ,
        title: Text("Notifications"),
        elevation: 0,
      ),
    );
  }
}
