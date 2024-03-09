import 'package:flutter/material.dart';

class RoundedCircularButton extends StatelessWidget {
  final String text;
  const RoundedCircularButton({super.key, required this.text});

  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                100,
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ));
  }
}
