import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'component/text_graph.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: const BoxConstraints(
            maxWidth: 1110,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About\nmy story",
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/sign.png"),
                  )
                ],
              ),
              aboutText(
                context,
                "Dev Systems is a forward-thinking software development company that embraces innovation and thrives on transforming ideas into reality. At the heart of our operations lies the power of Flutter, enabling us to build versatile, responsive, and high-performance applications across Android, iOS, web, and desktop platforms.",
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 244.h,
                    width: 255,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF7E8FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color(0xFFEDD2FC),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 6),
                            blurRadius: 6,
                            color: const Color.fromARGB(255, 161, 29, 232)
                                .withOpacity(0.25),
                          )
                        ],
                      ),
                      child: const Text(
                        "02",
                        style: TextStyle(
                          fontSize: 80,
                          color: Color.fromARGB(255, 240, 14, 214),
                          letterSpacing: 5,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Years of Experience",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 240, 14, 214),
                      letterSpacing: 5,
                      decoration: TextDecoration.none,
                    ),
                  )
                ],
              ),
              aboutText(context,
                  "As a Flutter developer, my journey in the world of mobile app development has been both exciting and rewarding. My fascination with technology led me to discover the potential of Flutter - a powerful UI toolkit from Google that allows us to craft captivating apps across multiple platforms. With expertise in Dart programming and a deep understanding of Flutter's architecture, I have honed my skills to deliver seamless user experiences and elegant designs."),
            ],
          ),
        ),
        SizedBox(height: 40.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // OutlineButton with hover effect
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all<Color>(
                  Colors.blue, // Change the button color when hovered
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                    height: 80.h,
                    child: Image.asset("assets/images/deal.png"),
                  ),
                  SizedBox(width: 10.w),
                  const Text(
                    "Hire Me",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 10.w),

            // OutlineButton with hover effect
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all<Color>(
                  Colors.blue, // Change the button color when hovered
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                    height: 80.h,
                    child: Image.asset("assets/images/cv.png"),
                  ),
                  SizedBox(width: 10.w),
                  const Text(
                    "My Resume",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
