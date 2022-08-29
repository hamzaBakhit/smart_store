import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/routs_manager.dart';
import 'package:smart_store/presintation/resources/static_widget_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';
import 'package:smart_store/widgets/app_text_button.dart';
import 'package:smart_store/widgets/app_text_field.dart';

class VerifyRegisterScreen extends StatefulWidget {
  const VerifyRegisterScreen({Key? key}) : super(key: key);

  @override
  _VerifyRegisterScreenState createState() => _VerifyRegisterScreenState();
}

class _VerifyRegisterScreenState extends State<VerifyRegisterScreen> {
  late TextEditingController _verifyEditingController;

  @override
  void initState() {
    super.initState();
    _verifyEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _verifyEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 120, right: 25, left: 25),
        child: Column(
          children: [
            Text(
              'Hello There',
              style: GoogleFonts.cairo(
                color: ColorManager.grey1,
                fontSize: AppSize.s16,
              ),
            ),
            Text(
              'Create Your Account',
              style: GoogleFonts.cairo(
                fontSize: AppSize.s22,
              ),
            ),
            getSizedBox60(),
            AppTextField(
              hint: 'Verification Code',
              keyboardType: TextInputType.number,
              textEditingController: _verifyEditingController,
            ),
            Spacer(),
            AppTextButton(
                actionName: 'Create account',
                onTab: _showSuccessCreationAccountDialog),
            getSizedBox20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You have an account? Please'),
                InkWell(
                  onTap: _navigateToLoginScreen,
                  child: Text(
                    'Sign in',
                    style: GoogleFonts.cairo(color: ColorManager.primary),
                  ),
                ),
              ],
            ),
            getSizedBox40(),
          ],
        ),
      ),
    );
  }

  _showSuccessCreationAccountDialog() {
    getDialog(
        context,
        InkWell(
          onTap: _navigateToLoginScreen,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: const [
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
                  'Account created',
                  style: GoogleFonts.cairo(
                      color: ColorManager.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Text(
                  'Tap to login to your account',
                  style: GoogleFonts.cairo(
                      color: ColorManager.grey2,
                      fontWeight: FontWeight.w300,
                      fontSize: 16),
                ),
              ],
            ),
          ),
        ));
  }

  _navigateToLoginScreen() {
    Navigator.pushReplacementNamed(context, Routs.loginScreen);
  }
}
