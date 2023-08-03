import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../AboutPage/about_page.dart';
import '../../Recentwork/recentwork.dart';
import '../../Testimonial/testimonial.dart';
import '../../contactinfo/contactform.dart';
import '../landing_page.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Testimonial",
    "Contact"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1110,
        maxHeight: 100.h,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 225, 225, 224),
              spreadRadius: 5,
              blurRadius: 20,
              offset: Offset(1, 2)
              // This value will create the inner shadow effect
              ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
            List.generate(menuItems.length, (index) => buildMenuItem(index)),
      ),
    );
  }

  Widget buildMenuItem(int index) => MouseRegion(
        onEnter: (event) {
          setState(() {
            hoverIndex = index;
          });
        },
        onExit: (event) {
          setState(() {
            hoverIndex = selectedIndex;
          });
        },
        child: GestureDetector(
          onTap: () {
            // Perform navigation based on the selected menu item
            switch (index) {
              case 0: // Home
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LandingPage()));
                break;
              case 1: // About
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AboutPage()));
                break;
              case 2: // About
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const RecentWork()));
                break;
              case 3: // About
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Testimonial()));
                break;
              case 4: // About
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LandingPage()));
                break;
              case 5: // About
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ContacBox()));
                break;
              // Add more cases for other menu items/pages if needed
            }
          },
          child: Container(
            alignment: Alignment.center,
            constraints: const BoxConstraints(minWidth: 122),
            height: 100,
            child: Stack(
              children: [
                RichText(
                  text: TextSpan(
                    text: menuItems[index],
                    style: const TextStyle(
                      color: Color.fromARGB(135, 66, 65, 65),
                      wordSpacing: 0.2,
                      fontSize: 18,
                      decorationThickness: 2.0,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom:
                      selectedIndex != index && hoverIndex == index ? -35 : -45,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(color: Colors.blue),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom: selectedIndex == index ? -35 : -45,
                  child: Container(
                    width: 40,
                    height: 40.h,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 6, 108, 225)),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
