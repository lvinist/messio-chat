import 'package:flutter/material.dart';
import 'package:messio/config/assets.dart';
import 'package:messio/config/styles.dart';
import 'package:intl/intl.dart';

class ChatRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: Image.asset(Assets.user).image,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      'John Doe',
                      style: Styles.subHeading,
                    ),
                    Text(
                      'what\'s up!',
                      style: Styles.subText,
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('kk:mm').format(DateTime.now()),
                    style: Styles.date,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
