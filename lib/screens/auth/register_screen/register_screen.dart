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

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _nameEditingController;
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;
  late TextEditingController _cityEditingController;
  bool _obsecure = false;
  String _gender = '';

  @override
  void initState() {
    super.initState();
    _nameEditingController = TextEditingController();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    _cityEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _nameEditingController.dispose();
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    _cityEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 120, right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello There',
                style: GoogleFonts.cairo(
                  color: ColorManager.grey1,
                  fontSize: AppSize.s16,
                )),
            Text(
              'Create Your Account',
              style: GoogleFonts.cairo(
                fontSize: AppSize.s22,
              ),
            ),
            getSizedBox60(),
            AppTextField(
              hint: 'Full name',
              keyboardType: TextInputType.text,
              textEditingController: _nameEditingController,
            ),
            getSizedBox20(),
            AppTextField(
              hint: 'Phone number',
              keyboardType: TextInputType.emailAddress,
              textEditingController: _emailEditingController,
            ),
            getSizedBox20(),
            AppTextField(
              hint: 'Password',
              keyboardType: TextInputType.visiblePassword,
              textEditingController: _passwordEditingController,
              obscure: _obsecure,
              suffixIcon: IconButton(
                onPressed: () => _obsecure = !_obsecure,
                icon: Icon(
                  _obsecure ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
            getSizedBox20(),
            AppTextField(
              hint: 'City',
              keyboardType: TextInputType.emailAddress,
              textEditingController: _cityEditingController,
            ),
            getSizedBox20(),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                      title: Text(
                        'Male',
                        style: GoogleFonts.cairo(),
                      ),
                      value: 'Male',
                      groupValue: _gender,
                      onChanged: (String? value) {
                        if (value != null) {
                          setState(() {
                            _gender = value;
                          });
                          Navigator.pop(context, 'male');
                        }
                      }),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: Text(
                      'Female',
                      style: GoogleFonts.cairo(),
                    ),
                    value: 'Female',
                    groupValue: _gender,
                    onChanged: (String? value) {
                      if (value != null) {
                        setState(() {
                          _gender = value;
                        });
                        Navigator.pop(context, 'female');
                      }
                    },
                  ),
                ),
              ],
            ),
            Spacer(),
            AppTextButton(
                actionName: 'Continue',
                onTab: _navigateToVerifyRegisterScreenScreen),
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

  _navigateToLoginScreen() {
    Navigator.pushReplacementNamed(context, Routs.loginScreen);
  }

  _navigateToVerifyRegisterScreenScreen() {
    Navigator.pushNamed(context, Routs.VerifyRegisterScreenScreen);
  }

}
