import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Portfolio/view/LandingPage/components/portfolio_page1.dart';

class LogoAndBlur extends StatelessWidget {
  const LogoAndBlur({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Padding(
        //   padding: const EdgeInsets.only(bottom: 10),
        //   child: Image.asset("assets/images/logobg.png"),
        // ),
        SizedBox(height: 400.h),
        GlassContext(size: size),
        Spacer(flex: 3),
      ],
    );
  }
}
