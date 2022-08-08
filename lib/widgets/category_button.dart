// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_shoes_store/theme.dart';

class CategoryButton extends StatelessWidget {
  final String name;
  final bool isActive;

  const CategoryButton({Key? key, required this.name, this.isActive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: isActive ? primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: isActive ? Colors.transparent : subtitleColor)
      ),
      child: Text(
        name,
        style: isActive ? primaryTextStyle : subtitleTextStyle.copyWith(
          fontSize: 13,
          fontWeight: medium,
        ),
      ),
    );
  }
}
