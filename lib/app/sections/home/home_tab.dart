import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mysite/app/sections/home/widgets/animation_text.dart';
import 'package:mysite/app/widgets/color_chage_btn.dart';
import 'package:mysite/changes/img.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/app/widgets/animations/entrance_fader.dart';
import 'package:mysite/app/widgets/animations/zoom_animation.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

import '../../../data/data.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: 60.h,
      child: Stack(
        children: [
          Positioned(
            right: 10.w,
            bottom: 20.w,
            child: const EntranceFader(
              offset: Offset(0, 0),
              delay: Duration(seconds: 1),
              duration: Duration(milliseconds: 800),
              child: ZoomAnimations(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Hi there, Welcome to My Space  ',
                      style: AppText.h3!
                          .copyWith(fontSize: isFontSize(context, 18)),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(StaticImage.hi, height: 10.sp),
                    ),
                  ],
                ),
                Space.y(1.w)!,
                Text(
                  "I'm Shameel Irtaza",
                  style: TextStyle(
                    fontSize: isFontSize(context, 38),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "A ",
                        style: TextStyle(
                          fontSize: isFontSize(context, 24),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      AnimatedTextKit(
                        animatedTexts: tabList,
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y(1.5.w)!,
                Padding(
                  padding: EdgeInsets.only(right: 50.w),
                  child: Text(
                    "Develop and maintain iOS and Android applications using Flutter. Maintain high standards of code quality. Report and estimate the development status on a regular basis.",
                    style: TextStyle(
                        fontSize: isFontSize(context, 16),
                        fontWeight: FontWeight.w100,
                        color: theme.textColor.withOpacity(0.6)),
                  ),
                ),
                Space.y(2.w)!,
                ColorChageButton(
                  text: 'download cv',
                  onTap: () {
                    html.window.open(resume, "pdf");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
