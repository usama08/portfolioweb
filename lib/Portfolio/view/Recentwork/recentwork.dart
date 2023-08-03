import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Portfolio/view/Recentwork/components/button.dart';
import 'package:portfolio/Portfolio/view/Recentwork/components/projects.dart';

class RecentWork extends StatelessWidget {
  const RecentWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 800.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
            fit: BoxFit.cover, image: AssetImage("assets/images/bdimage.jpg")),
      ),
      child: Column(
        children: [
          Container(
            height: 200.h,
            padding: const EdgeInsets.all(40),
            constraints: const BoxConstraints(maxWidth: 1110),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 12,
                      color: Color.fromARGB(255, 223, 221, 221),
                      offset: Offset(0, 20))
                ]),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/gmail.png",
                  height: 80.h,
                  width: 80.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Starting New Project",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      const Text(
                        "Get an Estimate for new Project",
                        style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                        ),
                      )
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 177, 255,
                          171), // Change the button color when hovered
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 5.w,
                        height: 60.h,
                        child: Image.asset(
                          "assets/images/handshake.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      const Text(
                        "Hire Me",
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
          ),
          SizedBox(height: 120.h),
          textSidebar(
            context,
            Color.fromARGB(255, 251, 255, 5),
            "My Strong Arenas",
            "My Recent Works",
          ),
          SizedBox(height: 20.h),
          Wrap(
            spacing: 15,
            runSpacing: 40,
            children: [
              projectWork(
                  context,
                  "assets/images/attendance.png",
                  "Ezz Attendance App",
                  "Its Attendance App using Map Location for Mark Attendance"),
              projectWork(context, "assets/images/quizapp.png", "360 Quiz App",
                  "Its Quiz App to Attempt Quiz with different catogory subjects"),
              projectWork(
                  context,
                  "assets/images/bookingapp.png",
                  "My Booking App",
                  "My Booking App using for booking your tickets its perivate company app"),
              projectWork(
                  context,
                  "assets/images/deliveryapp.png",
                  "Delivery App",
                  "With our user-friendly interface, placing an order has never been easier. Just a few taps, and your desired items will be on their way"),
            ],
          )
        ],
      ),
    );
  }
}
