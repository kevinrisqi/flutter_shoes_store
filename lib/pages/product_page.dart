// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoes_store/theme.dart';
import 'package:flutter_shoes_store/widgets/product_tile.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/image_shoes_1.png',
    'assets/image_shoes_1.png',
    'assets/image_shoes_1.png',
  ];

  List familiarShoes = [
    'assets/image_shoes_1.png',
    'assets/image_shoes_2.png',
    'assets/image_shoes_3.png',
    'assets/image_shoes_4.png',
    'assets/image_shoes_5.png',
    'assets/image_shoes_6.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color: currentIndex == index ? primaryColor : indicatorColor,
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }

    Widget familiarShoesCard(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
          ),
        ),
      );
    }

    Widget header() {
      int index = -1;
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
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map(
              (e) {
                index++;
                return indicator(index);
              },
            ).toList(),
          )
        ],
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 17),
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          color: bgColor1,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Terrex Urban Low',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Hiking',
                      style: subtitleTextStyle,
                    ),
                  ],
                ),
                Image.asset(
                  'assets/button_wishlist_grey.png',
                  width: 46,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: bgColor2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price start from',
                    style: primaryTextStyle,
                  ),
                  Text(
                    '\$143,55',
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Text(
              'Description',
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Unpaved trails and mixed surfaces are easy \nwhen you have the traction and support you\nneed. Casual enough for the daily commute.',
              style: subtitleTextStyle,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Text(
              'Familiar Shoes',
              style: primaryTextStyle.copyWith(fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: familiarShoes.map(
                  (image) {
                    return Container(
                      margin: EdgeInsets.only(right: 16),
                      child: familiarShoesCard(image),
                    );
                  },
                ).toList(),
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Row(
              children: [
                Container(
                  width: 54,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: primaryColor),
                  ),
                  child: Icon(
                    Icons.chat,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Text(
                        'Add to Cart',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor6,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
