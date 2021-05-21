import 'package:flutter/material.dart';
import 'package:messio/config/pallete.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController inputMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Pallete.grey, width: 0.5),
        ),
      ),
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 1),
            child: IconButton(
                icon: Icon(
                  Icons.face,
                  color: Pallete.grey,
                ),
                onPressed: () {}),
          ),
          Flexible(
            child: TextField(
              controller: inputMessageController,
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration.collapsed(
                hintText: 'Type a message',
                hintStyle: TextStyle(color: Pallete.grey),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 1),
            child: IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.blueAccent,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
