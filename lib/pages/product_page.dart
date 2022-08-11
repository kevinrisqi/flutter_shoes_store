// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoes_store/theme.dart';

class ProductPage extends StatelessWidget {
  List images = [
    'assets/image_shoes_1.png',
    'assets/image_shoes_1.png',
    'assets/image_shoes_1.png',
    'assets/image_shoes_1.png',
  ];

  ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget indicator() {
      return Container(
        width: 16,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(10)),
      );
    }

    Widget header() {
      return Column(
        children: [
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.chevron_left,
                ),
                Icon(
                  Icons.shopping_bag,
                  color: bgColor1,
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (image) => Image.asset(
                    image,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(viewportFraction: 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              indicator();
            }).toList(),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor6,
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
