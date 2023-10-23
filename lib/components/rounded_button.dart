import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color colour;
  final void Function()? onPressed;

  const RoundedButton(
      {super.key,
      required this.title,
      required this.colour,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 3.0,
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
