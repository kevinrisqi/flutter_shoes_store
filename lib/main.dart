// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_shoes_store/pages/detail_chat_page.dart';
import 'package:flutter_shoes_store/pages/edit_profile_page.dart';
import 'package:flutter_shoes_store/pages/home/main_page.dart';
import 'package:flutter_shoes_store/pages/sign_in_page.dart';
import 'package:flutter_shoes_store/pages/sign_up_page.dart';
import 'package:flutter_shoes_store/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/main': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
      },
    );
  }
}
