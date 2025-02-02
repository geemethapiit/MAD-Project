import 'package:flutter/material.dart';

class ComButton extends StatelessWidget {
  const ComButton(
      {Key? key,
        required this.width,
        required this.title,
        required this.disable,
        required this.onPressed})
      : super(key: key);

  final double width;
  final String title;
  final bool disable;
  final Function() onPressed;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
        onPressed: disable ? null : onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}