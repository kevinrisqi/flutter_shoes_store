// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_shoes_store/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor3,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: MediaQuery.of(context).size.height * 0.08,
        backgroundColor: bgColor1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.close),
            ),
            Text(
              'Edit Profile',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.check,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Column(
          children: [
            Image.asset(
              'assets/image_profile.png',
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: defaultMargin + 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: subtitleTextStyle.copyWith(fontSize: 16),
                      ),
                      TextFormField(
                        controller:
                            TextEditingController(text: 'Alex keinnzal'),
                        style: primaryTextStyle.copyWith(fontSize: 14),
                        decoration: InputDecoration(
                            hintText: 'Your Name',
                            hintStyle: subtitleTextStyle),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: defaultMargin + 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: subtitleTextStyle.copyWith(fontSize: 16),
                      ),
                      TextFormField(
                        controller: TextEditingController(text: '@alexkeinn'),
                        style: primaryTextStyle.copyWith(fontSize: 14),
                        decoration: InputDecoration(
                            hintText: 'Your Username',
                            hintStyle: subtitleTextStyle),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: defaultMargin + 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: subtitleTextStyle.copyWith(fontSize: 16),
                      ),
                      TextFormField(
                        controller:
                            TextEditingController(text: 'alex.kein@gmail.com'),
                        style: primaryTextStyle.copyWith(fontSize: 14),
                        decoration: InputDecoration(
                            hintText: 'Your Email Address',
                            hintStyle: subtitleTextStyle),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
