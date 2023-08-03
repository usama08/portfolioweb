import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget testimonialReview(
    BuildContext context, bgcolor, image, textqoutation, name) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    height: 400.h,
    width: 350,
    decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              blurRadius: 12,
              color: Color.fromARGB(255, 201, 201, 199),
              offset: Offset(0, 20)),
        ]),
    child: Column(
      children: [
        Transform.translate(
          offset: const Offset(0, -55),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 10),
                image: DecorationImage(image: AssetImage(image))),
          ),
        ),
        Text(
          textqoutation,
          style: const TextStyle(
            fontSize: 18,
            wordSpacing: 1,
            letterSpacing: 0.5,
            decoration: TextDecoration.none,
            color: Colors.black45,
            fontWeight: FontWeight.w100,
          ),
        ),
        const SizedBox(height: 35),
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            wordSpacing: 1,
            letterSpacing: 0.5,
            decoration: TextDecoration.none,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}
