import 'package:flutter/material.dart';
import 'package:ogu_schedule/src/models/data/common_style.dart';

class LoaderWidget extends StatelessWidget {
  static final TextStyle captionStyle = TextStyle(
    color: CommonStyle.primaryColor,
    fontSize: 16,
  );

  final String caption;

  LoaderWidget({
    this.caption,
  });

  @override
  Widget build(BuildContext context) => Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(),
        Container(
          padding: EdgeInsets.only(top: 15),
        ),
        if (caption != null) Text(
          caption,
          style: captionStyle,
        ),
      ],
    ),
  );
}