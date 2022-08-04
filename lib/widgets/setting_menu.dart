import 'package:flutter/material.dart';

import '../theme.dart';

class SettingMenu extends StatelessWidget {
  final String text;
  final String route;

  const SettingMenu({Key? key, required this.text, this.route = '/edit-profile'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, route);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              text,
              style: subtitleTextStyle,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, route);
            },
            icon: Icon(
              Icons.navigate_next,
              color: subtitleColor,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
