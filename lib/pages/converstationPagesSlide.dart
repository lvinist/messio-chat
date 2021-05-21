import 'package:flutter/material.dart';
import 'package:messio/pages/converstationPages.dart';
import 'package:rubber/rubber.dart';

class ConverstationPagesSlide extends StatefulWidget {
  ConverstationPagesSlide({Key key}) : super(key: key);

  @override
  _ConverstationPagesSlideState createState() =>
      _ConverstationPagesSlideState();
}

class _ConverstationPagesSlideState extends State<ConverstationPagesSlide>
    with SingleTickerProviderStateMixin {
  var controller;

  @override
  void initState() {
    controller = RubberAnimationController(
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        ConverstationPages(),
        ConverstationPages(),
        ConverstationPages(),
      ],
    );
  }
}
