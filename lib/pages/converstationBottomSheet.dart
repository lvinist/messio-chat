import 'package:flutter/material.dart';
import 'package:messio/config/pallete.dart';
import 'package:messio/config/styles.dart';
import 'package:messio/widget/chatRowWidget.dart';
import 'package:messio/widget/navigationPill.dart';

class ConverstationBottomSheet extends StatefulWidget {
  ConverstationBottomSheet({Key key}) : super(key: key);

  @override
  _ConverstationBottomSheetState createState() =>
      _ConverstationBottomSheetState();
 
}

class _ConverstationBottomSheetState extends State<ConverstationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              GestureDetector(
                child: ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: [
                    NavigationPill(),
                    Center(
                      child: Text(
                        'Messages',
                        style: Styles.textHeading,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                onVerticalDragEnd: (details) {
                  if (details.primaryVelocity > 50) {
                    Navigator.pop(context);
                  }
                },
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ChatRowWidget();
                  },
                  separatorBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(left: 75, right: 20),
                        child: Divider(
                          color: Pallete.accentColor,
                        ),
                      ),
                  itemCount: 5)
            ],
          ),
        ),
      ),
    );
  }
}
