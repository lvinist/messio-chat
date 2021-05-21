import 'package:flutter/material.dart';
import 'package:messio/widget/chatAppBar.dart';
import 'package:messio/widget/chatListWidget.dart';
import 'package:messio/widget/inputWidget.dart';

class ConverstationPages extends StatefulWidget {
  ConverstationPages({Key key}) : super(key: key);

  @override
  _ConverstationPagesState createState() => _ConverstationPagesState();
}

class _ConverstationPagesState extends State<ConverstationPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: ChatAppBar(),
        body: Stack(
          children: [
            Column(
              children: <Widget>[
                ChatListWidget(),
                InputWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
