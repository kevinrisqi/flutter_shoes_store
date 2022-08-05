// ignore_for_file: prefer_const_constructors
import 'dart:ffi';

import 'package:flutter/material.dart';
import '../theme.dart';

class CheckoutItem extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final int qty;

  const CheckoutItem(
      {Key? key,
      required this.image,
      required this.name,
      required this.price,
      required this.qty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$$price',
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          Text(
            '$qty Items',
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
