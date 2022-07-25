import 'package:flutter/material.dart';
import 'constants.dart';

class icon_content extends StatelessWidget {
  icon_content({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text('MALE', style: kLabelTextstyle)
      ],
    );
  }
}
