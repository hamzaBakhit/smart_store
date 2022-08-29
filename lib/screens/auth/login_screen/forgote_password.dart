import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/routs_manager.dart';
import 'package:smart_store/presintation/resources/static_widget_manager.dart';
import 'package:smart_store/presintation/resources/style_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';
import 'package:smart_store/utils/helpers.dart';
import 'package:smart_store/widgets/app_text_button.dart';
import 'package:smart_store/widgets/app_text_field.dart';
import 'package:smart_store/widgets/otp_verfify_text_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> with Helpers {
  late TextEditingController _emailEditingController;

  @override
  void initState() {
    super.initState();
    _emailEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Forgot Password',
                style: GoogleFonts.cairo(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Text(
                "Don’t worry, Nova have simple step to create your new password",
                style:
                    GoogleFonts.cairo(color: ColorManager.grey2, fontSize: 16),
              ),
              getSizedBox20(),
              AppTextField(
                hint: 'Enter a phone number',
                keyboardType: TextInputType.number,
                textEditingController: _emailEditingController,
              ),
              Spacer(),
              AppTextButton(
                  actionName: 'Confirm', onTab: _showVerifyBottomSheet),
              getSizedBox20(),
              getSizedBox20(),
            ],
          ),
        ),
      ),
    );
  }

  _showVerifyBottomSheet() {
    getBottomSheet(
      context,
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Thank You!',
              style: GoogleFonts.cairo(
                  fontSize: AppSize.s22, color: ColorManager.primary),
            ),
            Text(
              'We will sent 4 digits verification code to rizalegreyrat34@gmail.com please take a look and verify it',
              style: GoogleFonts.cairo(fontSize: AppSize.s16),
            ),
            getSizedBox60(),
            AppTextButton(
              actionName: 'Confirm',
              onTab: () {
                Navigator.pop(context);
                _showConfirmPasswordBottomSheet();
              },
            ),
            getSizedBox40(),
          ],
        ),
      ),
    );
  }

  _showConfirmPasswordBottomSheet() {
    getBottomSheet(
      context,
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Enter Your Code',
              style: GoogleFonts.cairo(
                  fontSize: AppSize.s22, color: ColorManager.primary),
            ),
            Text(
              'Enter the 4 digits code that you recived on your email',
              style: GoogleFonts.cairo(fontSize: AppSize.s16),
            ),
            getSizedBox60(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                OtpVerifyTextField(),
                OtpVerifyTextField(),
                OtpVerifyTextField(),
                OtpVerifyTextField(),
              ],
            ),
            getSizedBox60(),
            AppTextButton(
              actionName: 'Confirm',
              onTab: () {
                Navigator.pop(context);
                Future.delayed(const Duration(milliseconds: 500),(){
                  _showNavigationToAppDialog();
                });
              },
            ),
            getSizedBox40(),
          ],
        ),
      ),
    );
  }

  _showNavigationToAppDialog() {
    getDialog(
      context,
      InkWell(
        onTap: _navigateToChangePasswordScreen,
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s20),

          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children:  [
              Stack(
              alignment: AlignmentDirectional.center,
                children: const[
                   Image(
                    image: Svg(ImageAssets.check),

                  ),
                   Image(
                    image: Svg(ImageAssets.check_check),
                     width: 70,
                     height: 70,
                  ),
                ],
              ),
              Text(
                'Password changed',
                style: GoogleFonts.cairo(color: ColorManager.primary,fontWeight: FontWeight.bold,fontSize: 22),
              ),  Text(
                'Tap to login to your account',
                style: GoogleFonts.cairo(color: ColorManager.grey2,fontWeight: FontWeight.w300,fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _navigateToChangePasswordScreen() {
    Navigator.pop(context);
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.pushNamed(context, Routs.changePasswordScreen);
    });
  }
}
