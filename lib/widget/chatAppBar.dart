import 'package:flutter/material.dart';
import 'package:messio/config/assets.dart';
import 'package:messio/config/pallete.dart';
import 'package:messio/config/styles.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 100;

  const ChatAppBar();

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(color: Pallete.primaryColor, boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ]),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: Image.asset(Assets.user).image,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Alvin Fikri',
                        style: Styles.textHeading,
                      ),
                      Text(
                        '@alvinfikri',
                        style: Styles.textStyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: height * 0.3,
                        child: Row(
                          children: <Widget>[
                            Text('Photos', style: Styles.textStyle),
                            VerticalDivider(
                              width: 20,
                              color: Pallete.primaryTextColorlight,
                            ),
                            Text(
                              'Videos',
                              style: Styles.textStyle,
                            ),
                            VerticalDivider(
                              width: 20,
                              color: Pallete.primaryTextColorlight,
                            ),
                            Text(
                              'Files',
                              style: Styles.textStyle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.attach_file,
                      color: Pallete.primaryItemColorLight,
                      size: height * 0.4,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
