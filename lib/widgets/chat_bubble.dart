// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_shoes_store/theme.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSender;

  const ChatBubble({Key? key, required this.message, this.isSender = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: defaultMargin),
      child: Row(
        mainAxisAlignment: isSender ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: isSender ? bgColor4 : bgColor5,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isSender ? 0 : 12),
                  topRight: Radius.circular(isSender ? 12 : 0),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Text(
                message,
                style: primaryTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
