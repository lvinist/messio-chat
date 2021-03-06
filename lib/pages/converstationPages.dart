import 'package:flutter/material.dart';
import 'package:messio/pages/converstationBottomSheet.dart';

import 'package:messio/widget/chatAppBar.dart';
import 'package:messio/widget/chatListWidget.dart';
import 'package:messio/widget/inputWidget.dart';

class ConverstationPages extends StatefulWidget {
  ConverstationPages({Key key}) : super(key: key);

  @override
  _ConverstationPagesState createState() => _ConverstationPagesState();
}

class _ConverstationPagesState extends State<ConverstationPages> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      appBar: ChatAppBar(),
      body: Container(
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                ChatListWidget(),
                GestureDetector(
                  child: InputWidget(),
                  onPanUpdate: (details) {
                    _scaffoldKey.currentState
                        .showBottomSheet((BuildContext context) {
                      return ConverstationBottomSheet();
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
