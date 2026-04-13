import 'package:flutter/material.dart';

class DefaultError extends StatelessWidget {
  final VoidCallback? onpress;
  final String? content;

  const DefaultError({this.onpress, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 110,
          decoration: BoxDecoration(
            // color: Colors.red
          ),
          // constraints: BoxConstraints.tightFor(height: 100),
          child: Image.asset(
            'assets/images/simon_empty.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        Text(
          this.content ?? "Ops!, Something went wrong.",
          textAlign: TextAlign.center,
        ),

        if (this.onpress != null)
          Center(
            child: TextButton(
              onPressed: this.onpress,
              child: Text("Try again"),
            ),
          ),
      ],
    );
  }
}
