import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.only(right: 50),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(width: 20.0, height: 100.0),
              const SizedBox(width: 20.0, height: 100.0),
              SizedBox(
                height: 100,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Horizon',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('Hi',
                          textStyle: GoogleFonts.chewy(
                              color: kPrimaryColor,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      RotateAnimatedText('Welcome',
                          textStyle: GoogleFonts.chewy(
                              color: kPrimaryColor,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      RotateAnimatedText('to',
                          textStyle: GoogleFonts.chewy(
                              color: kPrimaryColor,
                              fontSize: 40,
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
          "Habits App",
          style: GoogleFonts.chewy(
            color: kPrimaryColor,
            fontSize: 40,
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
