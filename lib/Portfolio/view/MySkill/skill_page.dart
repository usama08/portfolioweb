import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Portfolio/view/MySkill/component/myskill.dart';
import '../../model/skill_model.dart';

class MySkill extends StatelessWidget {
  const MySkill({super.key});

  @override
  Widget build(BuildContext context) {
    List<Skill> skills = [
      Skill(
        id: 1,
        title: 'Flutter',
        image: 'assets/images/flag.png',
        color: Colors.blue,
      ),
      Skill(
        id: 2,
        title: 'Dart',
        image: 'assets/images/dart.png',
        color: Colors.teal,
      ),
      Skill(
        id: 3,
        title: 'Firebase',
        image: 'assets/images/firebase.png',
        color: const Color.fromARGB(255, 78, 212, 227),
      ),
      Skill(
        id: 4,
        title: "Api's",
        image: 'assets/images/apis.png',
        color: const Color.fromARGB(255, 248, 248, 128),
      ),
      Skill(
        id: 5,
        title: "ios",
        image: 'assets/images/ios.png',
        color: const Color.fromARGB(255, 91, 252, 179),
      ),
      Skill(
        id: 6,
        title: "Android",
        image: 'assets/images/android.png',
        color: const Color.fromARGB(255, 89, 182, 189),
      ),
      Skill(
        id: 7,
        title: "Git",
        image: 'assets/images/git.png',
        color: const Color.fromARGB(255, 141, 232, 183),
      ),
      Skill(
        id: 8,
        title: "MVVM",
        image: 'assets/images/mvvm.png',
        color: const Color.fromARGB(255, 246, 194, 138),
      ),
      Skill(
          id: 9,
          title: "MVC",
          image: 'assets/images/mvc.png',
          color: const Color(0xfffdb8e8e)),

      // Add more skills as needed...
    ];
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 1110),
            height: 100,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  padding: const EdgeInsets.only(bottom: 72),
                  width: 8,
                  height: 100,
                  color: Colors.black,
                  child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 48, 35))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "My Strong Arenas",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w200,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      "My Strong Skills",
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              myContainer(
                  context, skills[0].color, skills[0].image, skills[0].title),
              SizedBox(width: 5.w),
              myContainer(
                  context, skills[1].color, skills[1].image, skills[1].title),
              SizedBox(width: 5.w),
              myContainer(
                  context, skills[2].color, skills[2].image, skills[2].title),
              SizedBox(width: 5.w),
              myContainer(
                  context, skills[3].color, skills[3].image, skills[3].title),
              SizedBox(width: 5.w),
              myContainer(
                  context, skills[4].color, skills[4].image, skills[4].title),
              SizedBox(width: 5.w),
              myContainer(
                  context, skills[5].color, skills[5].image, skills[5].title),
            ],
          ),
          SizedBox(height: 3.w),
          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              myContainer(
                  context, skills[6].color, skills[6].image, skills[6].title),
              SizedBox(width: 7.2.w),
              myContainer(
                  context, skills[7].color, skills[7].image, skills[7].title),
              SizedBox(width: 7.2.w),
              myContainer(
                  context, skills[8].color, skills[8].image, skills[8].title),
              SizedBox(width: 7.2.w),
            ],
          ),
        ],
      ),
    );
  }
}
