import 'package:flutter/material.dart';
import 'package:messio/config/pallete.dart';
import 'package:intl/intl.dart';

class ChatItemWidget extends StatelessWidget {
  final index;

  ChatItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    if (index % 2 == 0) {
      return Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 200,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Pallete.selfMessageBackgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'This is sent message',
                    style: TextStyle(color: Pallete.selfMessageColor),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    DateFormat('dd MMM kk:mm').format(DateTime.now()),
                    style: TextStyle(
                      color: Pallete.grey,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 200,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Pallete.otherMessageBackgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'This is received message',
                    style: TextStyle(color: Pallete.otherMessageColor),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    DateFormat('dd MMM kk:mm').format(DateTime.now()),
                    style: TextStyle(
                      color: Pallete.grey,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }
  }
}
