import 'package:flutter/material.dart';

import '../theme.dart';

class SettingMenu extends StatelessWidget {
  final String text;

  const SettingMenu({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: subtitleTextStyle,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.navigate_next,
            color: subtitleColor,
            size: 35,
          ),
        ),
      ],
    );
  }
}
