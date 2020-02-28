import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/models/data/common_style.dart';

class ZeroStateWidget extends StatelessWidget {
  static final Color picColor = CommonStyle.primaryColor;
  static final double picSize = 100;

  static final TextStyle descriptionStyle = TextStyle(
    color: CommonStyle.primaryColor,
    fontSize: 20,
  );

  final IconData pic;
  final String description;

  ZeroStateWidget({
    this.pic,
    this.description,
  });

  @override
  Widget build(BuildContext context) => Expanded(
    child: Container(
      padding: EdgeInsets.only(
        left: 4,
        right: 4,
        bottom: 50,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            pic,
            size: picSize,
            color: picColor,
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
          ),
          Text(
            description,
            style: descriptionStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}