import 'package:flutter/material.dart';
import 'package:messio/pages/converstationPages.dart';

class ConverstationPageList extends StatefulWidget {
  @override
  _ConverstationPageListState createState() => _ConverstationPageListState();
}

class _ConverstationPageListState extends State<ConverstationPageList> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        ConverstationPages(),
        ConverstationPages(),
        ConverstationPages(),
      ],
    );
  }
}
