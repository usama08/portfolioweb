import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget myContainer(BuildContext context, color, image, title) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 2),
    height: 256,
    width: 256,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(255, 225, 225, 224),
              spreadRadius: 5,
              blurRadius: 20,
              offset: Offset(1, 2))
        ]),
    child: Column(
      children: [
        SizedBox(height: 25.h),
        Container(
          // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
          padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
          height: 120.h,
          width: 120.w,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 20),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.1))
              ]),
          child: Image.asset(
            image,
          ),
        ),
        SizedBox(height: 25.h),
        Text(
          title,
          style: const TextStyle(
            fontSize: 32,
            color: Colors.white,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        )
      ],
    ),
  );
}
