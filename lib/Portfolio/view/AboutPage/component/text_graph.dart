import 'package:flutter/material.dart';

Widget aboutText(BuildContext context, text) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        text,
        maxLines: 7,
        style: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
            height: 2,
            decoration: TextDecoration.none),
      ),
    ),
  );
}
