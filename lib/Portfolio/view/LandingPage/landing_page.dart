import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Portfolio/view/LandingPage/components/personal_pic.dart';
import 'package:portfolio/Portfolio/view/Recentwork/recentwork.dart';
import 'package:portfolio/Portfolio/view/Testimonial/testimonial.dart';
import 'package:portfolio/Portfolio/view/contactinfo/contactform.dart';
import '../AboutPage/about_page.dart';
import '../MySkill/skill_page.dart';
import 'components/logo_blur.dart';
import 'components/menu_items.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(maxHeight: 900.h, minWidth: 700.w),
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/background.jpg"),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                // margin: EdgeInsets.symmetric(horizontal: 200),
                width: 1200.w,
                child: Stack(
                  children: [
                    LogoAndBlur(size: size),
                    const Positioned(
                      bottom: -80,
                      top: 0,
                      left: 500,
                      child: PersonalPic(),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                const SizedBox(height: 50),
                Positioned(
                  child: Container(
                    height: 500.h,
                    width: MediaQuery.sizeOf(context).height * 10,
                    color: Colors.white,
                  ),
                ),
                const Positioned(bottom: 380, child: Menu()),
                const SizedBox(height: 2),
                const Positioned(bottom: -5, child: AboutPage()),
                const SizedBox(height: 0),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                const SizedBox(height: 50),
                Positioned(
                  child: Container(
                    height: 1200.h,
                    width: MediaQuery.sizeOf(context).height * 10,
                    color: Colors.white,
                  ),
                ),
                const Positioned(bottom: 0, top: 80, child: MySkill()),
              ],
            ),
            const Stack(
              children: [Positioned(child: RecentWork())],
            ),
            SizedBox(height: 80),
            const Stack(
              children: [Positioned(child: Testimonial())],
            ),
            SizedBox(height: 80),
            const Stack(
              children: [Positioned(child: ContactInfo())],
            ),
          ],
        ),
      ),
    );
  }
}
