import 'package:flutter/material.dart';
import 'package:flutter_shoes_store/theme.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: Scaffold(
        backgroundColor: bgColor3,
        appBar: AppBar(
          backgroundColor: bgColor1,
          title: Text(
            'First Setting',
            style: GoogleFonts.poppins(),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 75,
                height: 75,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_avatar.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Kevin Risqi',
                style: primaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Hi, I'am is a Mobile Developer",
                style: secondaryTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
