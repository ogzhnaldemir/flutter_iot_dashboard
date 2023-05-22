import 'package:flutter/material.dart';

Widget TxtFld({
  required String hintText,
  required IconData prefixIcon,
  bool obscureText = false,
  Widget? logo,
  void Function(String)? onChanged,
  TextEditingController? myController,
  Color? iconColor, // Yeni parametre: ikon rengi
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5),
        topRight: Radius.circular(5),
        bottomLeft: Radius.circular(5),
        bottomRight: Radius.circular(5),
      ),
      border: Border(
        top: BorderSide(color: Colors.black, width: 0.5),
        bottom: BorderSide(color: Colors.black, width: 0.5),
        left: BorderSide(color: Colors.black, width: 0.5),
        right: BorderSide(color: Colors.black, width: 0.5),
      ),
    ),
    width: 230,
    height: 33.5,
    child: Row(
      children: [
        if (logo != null) logo,
        if (logo != null) const SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: myController,
            onChanged: onChanged,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              prefixIcon: Icon(prefixIcon, size: 20, color: iconColor),
              hintStyle: const TextStyle(fontSize: 12),
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
            ),
            style: const TextStyle(fontSize: 12),
            cursorColor: Color.fromARGB(255, 0, 17, 255),
          ),
        ),
      ],
    ),
  );
}
