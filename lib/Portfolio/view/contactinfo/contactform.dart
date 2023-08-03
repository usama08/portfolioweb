import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Portfolio/view/Recentwork/components/button.dart';
import 'package:portfolio/Portfolio/view/contactinfo/component/contactbutton.dart';
import 'package:portfolio/Portfolio/view/contactinfo/component/textfield.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        // color: Color(0xFFE8F0F9),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/contactbg.jpg",
            )),
      ),
      child: Column(
        children: [
          SizedBox(height: 45.h),
          textSidebar(
            context,
            const Color.fromARGB(255, 6, 240, 56),
            "For Project Inquiry and information",
            "Contact Me",
          ),
          const ContacBox()
        ],
      ),
    );
  }
}

class ContacBox extends StatelessWidget {
  const ContacBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 1100,
        maxHeight: 500,
      ),
      width: 1100,
      height: 600,
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.only(top: 2),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          SizedBox(height: 10.w),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              contactInfo(
                context,
                const Color.fromARGB(255, 144, 221, 253),
                "assets/images/skype.png",
                "Skype",
                const Color.fromARGB(255, 1, 35, 204),
                const Color.fromARGB(255, 8, 111, 103),
              ),
              SizedBox(width: 30.w),
              contactInfo(
                context,
                const Color.fromARGB(255, 175, 221, 184),
                "assets/images/whatsapp.png",
                "WhatsApp",
                const Color.fromARGB(255, 10, 84, 25),
                const Color.fromARGB(255, 251, 251, 251),
              ),
              SizedBox(width: 30.w),
              contactInfo(
                context,
                const Color.fromARGB(255, 174, 208, 239),
                "assets/images/linkedin.png",
                "Linkdin",
                const Color.fromARGB(255, 4, 106, 202),
                const Color.fromARGB(255, 222, 235, 247),
              )
            ],
          ),
          SizedBox(height: 40.h),
          textfield(context),

          ///textfiled with heading
        ],
      ),
    );
  }
}
