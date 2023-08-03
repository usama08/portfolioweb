import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Portfolio/view/Recentwork/components/button.dart';
import 'package:portfolio/Portfolio/view/Testimonial/components/testimonial.dart';

class Testimonial extends StatelessWidget {
  const Testimonial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 1100,
        maxHeight: 600,
      ),
      child: Column(
        children: [
          textSidebar(
            context,
            const Color.fromARGB(255, 237, 5, 167),
            "Clint's testimonials that inspired me a lot",
            "Feedback Received",
          ),
          SizedBox(height: 55.h),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              testimonialReview(
                context,
                const Color.fromARGB(255, 184, 176, 106),
                "assets/images/abrar.png",
                "Working with you to develop the booking app has been an incredible experience. Your attention to detail and understanding of my business needs resulted in a tailor-made solution that fits perfectly. I appreciate your professionalism Work. ",
                "Abrar Javed",
              ),
              testimonialReview(
                context,
                const Color.fromARGB(255, 106, 193, 186),
                "assets/images/hr.png",
                "I am overjoyed with the delivery app you custom-built for my online store. It has given me a competitive edge and elevated my customer experience to a whole new level.Your team's professionalism and expertise have been exemplary. ",
                "Farzouq Ali Shaukat",
              ),
              testimonialReview(
                context,
                const Color.fromARGB(255, 255, 213, 115),
                "assets/images/user2.png",
                "I am beyond impressed with the attendance app you developed for me. It's not only visually appealing but also highly functional. The ability to customize attendance settings to fit my unique business needs is a huge advantage.",
                "Ericon Alkon",
              ),
            ],
          )
        ],
      ),
    );
  }
}
