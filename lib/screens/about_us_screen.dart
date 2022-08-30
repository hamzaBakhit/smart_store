import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            right: AppSize.s26, left: AppSize.s26, top: AppSize.s120),
        child: Column(
          children: [
            Text(
              'About us...',
              style: GoogleFonts.cairo(
                fontSize: AppSize.s22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Image(
                    image: Svg(ImageAssets.splashLogo),
                    width: 200,
                    height: 200,
                  ),
                ),
                getSizedBox40(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Facebook',
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: AppSize.s16),
                  ),
                ),
                getSizedBox20(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Instagram',
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: AppSize.s16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
