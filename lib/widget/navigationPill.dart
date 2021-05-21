import 'package:flutter/material.dart';
import 'package:messio/config/pallete.dart';

class NavigationPill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Center(
                child: Wrap(
                  children: [
                    Container(
                      width: 50,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 5,
                      decoration: BoxDecoration(
                        color: Pallete.accentColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
