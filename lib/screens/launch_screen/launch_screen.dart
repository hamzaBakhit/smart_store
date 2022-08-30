import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/routs_manager.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // Navigator.pushNamed(context, Routs.onboardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const Image(
               image: Svg(ImageAssets.splashLogo),
             ),
            AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Nova',
                  textStyle: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold,
                      color: ColorManager.primary,
                      fontSize: 80),
                  duration: const Duration(milliseconds: 1500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
