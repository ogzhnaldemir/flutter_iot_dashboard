import 'package:flutter/material.dart';

class TxtBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const TxtBtn({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontSize: 12),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        shape: const StadiumBorder(),
        padding: const EdgeInsets.all(14.0),
      ),
    );
  }
}
