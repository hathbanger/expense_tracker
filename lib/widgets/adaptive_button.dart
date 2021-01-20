import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  final String text;
  final Function buttonPressed;

  AdaptiveButton(this.buttonPressed, this.text);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(text),
            onPressed: buttonPressed,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            onPressed: buttonPressed,
            child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)));
  }
}
