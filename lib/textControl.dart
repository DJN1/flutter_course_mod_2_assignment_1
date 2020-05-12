import "package:flutter/material.dart";

class TextControl extends StatelessWidget {
  final Function change;
  final int n;
  TextControl(this.change, this.n);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Change Text"),
      onPressed: () => change(n),
    );
  }
}
