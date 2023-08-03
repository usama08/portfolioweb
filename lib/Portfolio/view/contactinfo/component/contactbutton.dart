import 'package:flutter/material.dart';

Widget contactInfo(BuildContext context, color, image, text, color1, color2) {
  return Container(
    width: 200,
    height: 80,
    padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(blurRadius: 2, color: Colors.grey, offset: Offset(0, 2))
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          image,
          height: 50,
          width: 50,
        ),
        const SizedBox(width: 5), // Add spacing between image and text
        SizedBox(
          // Set the desired height
          child: OutlinedButton(
            onPressed: () {
              // Add your action here
            },
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: color1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(color: color2),
            ),
          ),
        ),
      ],
    ),
  );
}
