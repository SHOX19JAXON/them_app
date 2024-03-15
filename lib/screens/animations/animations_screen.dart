import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:them_app/screens/animation_eight.dart';
import 'package:them_app/screens/animation_fifth.dart';
import 'package:them_app/screens/animation_first.dart';
import 'package:them_app/screens/animation_fourth.dart';
import 'package:them_app/screens/animation_nineth.dart';
import 'package:them_app/screens/animation_second.dart';
import 'package:them_app/screens/animation_seventh.dart';
import 'package:them_app/screens/animation_sixth.dart';
import 'package:them_app/screens/animation_teenth.dart';
import 'package:them_app/screens/animation_third.dart';

import '../animation_demo.dart';

class AnimationsScreen extends StatefulWidget {
  const AnimationsScreen({super.key});

  @override
  State<AnimationsScreen> createState() => _AnimationsScreenState();
}

class _AnimationsScreenState extends State<AnimationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationFirst(),
                    ),
                  );
                },
                title: Center(
                  child: Text(
                    "shakilni aylanishi ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationThird(),
                    ),
                  );
                },
                title: Text(
                  "flutter",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationFourth(),
                    ),
                  );
                },
                title: Text(
                  "Text va color o'zgarishi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationSecond(),
                    ),
                  );
                },
                title: Text(
                  "Text siz kattarishi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationFifth(),
                    ),
                  );
                },
                title: Text(
                  "shalik eniga o'sishi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationSixth(),
                    ),
                  );
                },
                title: Text(
                  "shakil yoq bo'lishi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationEight(),
                    ),
                  );
                },
                title: Text(
                  "4 ta dumoloq 8",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationSeventh(),
                    ),
                  );
                },
                title: Text(
                  "Text size",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              // ListTile(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const AnimationNineth(),
              //       ),
              //     );
              //   },
              //   title: Text(
              //     "Example 9",
              //     style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 20.sp,
              //       fontWeight: FontWeight.w400,
              //     ),
              //   ),
              // ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationTeenth(),
                    ),
                  );
                },
                title: Text(
                  "Doyra ichida doyra",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnimationDemo(),
                    ),
                  );
                },
                title: Text(
                  "AnimationDemo",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
