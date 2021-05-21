import 'package:flutter/material.dart';
import 'package:messio/widget/chatItemWidget.dart';

class ChatListWidget extends StatelessWidget {
  final ScrollController listScrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 20,
        itemBuilder: (context, index) {
          return ChatItemWidget(index);
        },
        reverse: true,
        controller: listScrollController,
      ),
    );
  }
}
