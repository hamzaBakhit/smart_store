import 'package:flutter/material.dart';
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
            CircleAvatar(
              child: Image.asset(ImageAssets.splashLogo),
            ),
            getSizedBox40(),
            TextButton(onPressed: (){}, child: Text('Facebook',style: GoogleFonts.cairo(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: AppSize.s16),),),
            getSizedBox20(),
            TextButton(onPressed: (){}, child: Text('Instagram',style: GoogleFonts.cairo(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: AppSize.s16),),),
          ],
        ),
      ),
    );
  }
}
