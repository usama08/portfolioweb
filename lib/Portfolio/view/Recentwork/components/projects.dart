import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget projectWork(BuildContext context, image, text1, text2) {
  return Container(
    height: 320.h,
    width: 540,
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              blurRadius: 12,
              color: Color.fromARGB(255, 255, 251, 133),
              offset: Offset(0, 20))
        ]),
    child: Row(
      children: [
        Container(
            color: Color.fromARGB(255, 243, 241, 240),
            child: Image.asset(image)),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: const TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                text2,
                style: const TextStyle(
                  fontSize: 22,
                  decoration: TextDecoration.none,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "view",
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
        ))
      ],
    ),
  );
}
