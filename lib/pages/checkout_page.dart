// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_shoes_store/theme.dart';
import 'package:flutter_shoes_store/widgets/checkout_item.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget addressDetails() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: defaultMargin),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgColor4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address Details',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_shop_location.png',
                      width: 60,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Store Location',
                            style: subtitleTextStyle,
                          ),
                          Text(
                            'Adidas Core',
                            style: primaryTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: defaultMargin),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image_line.png',
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_your_location.png',
                      width: 60,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Address',
                            style: subtitleTextStyle,
                          ),
                          Text(
                            'Marsemoon',
                            style: primaryTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget paymentSummary() {
      return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: bgColor4, borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Summary',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Quantity',
                  style: subtitleTextStyle,
                ),
                Text(
                  '2 Items',
                  style: primaryTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Price',
                  style: subtitleTextStyle,
                ),
                Text(
                  '\$89,45',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping',
                  style: subtitleTextStyle,
                ),
                Text(
                  'Free',
                  style: primaryTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Divider(
              thickness: 1,
              color: subtitleColor,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: priceTextStyle.copyWith(fontWeight: semiBold),
                ),
                Text(
                  '\$89,45',
                  style: priceTextStyle.copyWith(fontWeight: semiBold),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          Container(
            margin: EdgeInsets.all(defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: [
                    CheckoutItem(
                      image: 'assets/image_shoes_1.png',
                      name: 'Terrex Urban Low',
                      price: 78.44,
                      qty: 2,
                    ),
                    CheckoutItem(
                      image: 'assets/image_shoes_2.png',
                      name: 'Terrex Urban Middle',
                      price: 79.90,
                      qty: 5,
                    ),
                    CheckoutItem(
                      image: 'assets/image_shoes_3.png',
                      name: 'Terrex Urban High',
                      price: 40.33,
                      qty: 4,
                    ),
                  ],
                ),
                addressDetails(),
                paymentSummary(),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.09,
        backgroundColor: bgColor1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Checkout Details',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
      body: content(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            thickness: 1,
            color: subtitleColor,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(defaultMargin),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                primary: primaryColor,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13),
                child: Text(
                  'Checkout Now',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
