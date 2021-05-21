import 'package:flutter/material.dart';
import 'package:messio/config/assets.dart';
import 'package:messio/config/pallete.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 80;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    var textHeading =
        TextStyle(color: Pallete.primaryTextColorlight, fontSize: 20);
    var textStyle = TextStyle(color: Pallete.primaryTextColorlight);

    var width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: Pallete.primaryColor, boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
          ),
        ]),
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
                  children: [
                    Text(
                      'Alvin Fikri',
                      style: textHeading,
                    ),
                    Text(
                      '@alvinfikri',
                      style: textStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: height * 0.3,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Photos',
                            style: textStyle,
                          ),
                          VerticalDivider(
                            width: 20,
                            color: Pallete.primaryTextColorlight,
                          ),
                          Text(
                            'Videos',
                            style: textStyle,
                          ),
                          VerticalDivider(
                            width: 20,
                            color: Pallete.primaryTextColorlight,
                          ),
                          Text(
                            'Files',
                            style: textStyle,
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
    );
  }
}
