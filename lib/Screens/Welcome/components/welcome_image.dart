import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 50.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 20.0, height: 100.0),
              const SizedBox(width: 20.0, height: 100.0),
              SizedBox(
                height: 50.h,
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 40.sp,
                    // fontFamily: 'Horizon',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('Welcome',
                          textStyle: GoogleFonts.chewy(
                              color: Colors.black,
                              fontSize: 40.sp,
                              fontWeight: FontWeight.bold)),
                      RotateAnimatedText('to',
                          textStyle: GoogleFonts.chewy(
                              color: Colors.pink,
                              fontSize: 40.sp,
                              fontWeight: FontWeight.bold)),
                    ],
                    repeatForever: true,
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          "Habits",
          style: GoogleFonts.dmSerifText(
            color: Colors.pink,
            fontSize: 60.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
              ),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
