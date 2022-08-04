// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme.dart';

class WishlistTile extends StatelessWidget {
  final String image;
  final String name;
  final double price;

  const WishlistTile({
    Key? key, required this.image, required this.name, required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 84,
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 12,
          bottom: 14,
          right: 20,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: primaryTextStyle.copyWith(
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
            Image.asset(
              'assets/button_wishlist.png',
              width: 34,
            ),
          ],
        ),
      ),
    );
  }
}
