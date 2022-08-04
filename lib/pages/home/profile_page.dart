// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_shoes_store/theme.dart';
import 'package:flutter_shoes_store/widgets/setting_menu.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: bgColor1,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.symmetric(vertical: defaultMargin, horizontal: 10),
          child: Row(
            children: [
              Image.asset(
                'assets/image_profile.png',
                width: 64,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hallo, Alex',
                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '@alexkeinn',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/button_exit.png',
                width: 20,
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        Expanded(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        SettingMenu(text: 'Edit Profile'),
                        SettingMenu(text: 'Your Orders'),
                        SettingMenu(text: 'Help'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'General',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        SettingMenu(text: 'Privacy & Policy'),
                        SettingMenu(text: 'Term of Service'),
                        SettingMenu(text: 'Rate App'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
