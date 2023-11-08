import 'package:flutter/material.dart';
import 'package:starlive_app/live_screens/live_screen.dart';
import 'package:starlive_app/views/auth_screen/choose_yourinternet_screen.dart';
import 'package:starlive_app/views/auth_screen/login_screen.dart';
import 'package:starlive_app/views/home_screens/chat_screen.dart';
import 'package:starlive_app/views/home_screens/coin_screen.dart';
import 'package:starlive_app/views/home_screens/explore_screen.dart';
import 'package:starlive_app/views/home_screens/following_screen.dart';
import 'package:starlive_app/views/home_screens/foryou_screen.dart';
import 'package:starlive_app/views/home_screens/home_screen.dart';
import 'package:starlive_app/views/home_screens/my_account_screen.dart';
import 'package:starlive_app/views/inbox_screens/add_chat_screen.dart';
import 'package:starlive_app/views/inbox_screens/inbox_screen.dart';
import 'package:starlive_app/views/inbox_screens/massage_request_screen.dart';
import 'package:starlive_app/views/leaderboard_screens/leaderboard_screen.dart';
import 'package:starlive_app/views/notifications_screens/comment_screen.dart';
import 'package:starlive_app/views/notifications_screens/notification_screen.dart';
import 'package:starlive_app/views/profile_screen/profile_screen.dart';
import 'package:starlive_app/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: MessageRequestScreen(),
      //home:AddChat(),
      //home:NotificationScreen() ,
      //home: LeaderboardScreen(),
      home:SplashScreen(),
      //home: MyAccount(),
      //home:ChooseYourInternet(),
     // home:LoginScreen() ,
    );
  }
}
