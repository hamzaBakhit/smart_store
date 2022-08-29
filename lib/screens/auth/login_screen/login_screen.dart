import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/routs_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';
import 'package:smart_store/widgets/app_text_button.dart';
import 'package:smart_store/widgets/app_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;

  bool _obsecure = false;

  @override
  void initState() {
    super.initState();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
  }

  _navigateToForgotPasswordScreen() {
    Navigator.pushNamed(context, Routs.forgotPassword);
  }

  _navigateToSignupScreen() {
    Navigator.pushReplacementNamed(context, Routs.registerScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              // app logo
              const Center(
                child: Image(
                  image: Svg(ImageAssets.splashLogo),
                ),
              ),
              // password and email text field
              const SizedBox(
                height: 80,
              ),
              AppTextField(
                hint: 'Phone',
                keyboardType: TextInputType.phone,
                textEditingController: _emailEditingController,
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextField(
                hint: 'Password',
                keyboardType: TextInputType.visiblePassword,
                obscure: _obsecure,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() => _obsecure = !_obsecure);
                  },
                  icon: Icon(
                    _obsecure ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
                textEditingController: _passwordEditingController,
              ),
              //forgot password
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: _navigateToForgotPasswordScreen,
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.cairo(color: ColorManager.primary),
                  ),
                ),
              ),
              Spacer(),
              // log in button
            AppTextButton(actionName: 'Login', onTab: (){}),
              // //don't have an account
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? Please ',
                    style: GoogleFonts.cairo(color: Colors.black),
                  ),
                  InkWell(
                    onTap:  _navigateToSignupScreen,
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.cairo(
                        color: ColorManager.primary,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

