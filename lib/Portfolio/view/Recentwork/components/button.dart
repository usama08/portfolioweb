import 'package:flutter/material.dart';

Widget textSidebar(BuildContext context, color, text1, text2) {
  return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(children: [
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
                child: DecoratedBox(decoration: BoxDecoration(color: color)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w200,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    text2,
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        )
      ]));
}
