import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlassContext extends StatelessWidget {
  const GlassContext({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.6),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: "Dev Systems",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Colors.white),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "Mian\nOsama Razzaq",
                  style: TextStyle(
                    fontSize: 62,
                    fontWeight: FontWeight.bold,
                    height: 1.5.h,
                    color: Colors.white,
                    // Add this line for yellow underline
                    decorationThickness:
                        2.0, // Add this line to control underline thickness
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "Director Creative Dev Systems",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
