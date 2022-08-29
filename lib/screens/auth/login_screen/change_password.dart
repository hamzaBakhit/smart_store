import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';
import 'package:smart_store/widgets/app_text_button.dart';
import 'package:smart_store/widgets/app_text_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late TextEditingController _newPassword;
  late TextEditingController _repeatPassword;
  bool _obsecureNewPassword = false;
  bool _obsecureRepeatPassword = false;

  @override
  void initState() {
    super.initState();
    _newPassword = TextEditingController();
    _repeatPassword = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    _newPassword.dispose();
    _repeatPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getSizedBox60(),
              getSizedBox60(),
              Text(
                'Reset Password',
                style: GoogleFonts.cairo(fontSize: AppSize.s26,
                fontWeight: FontWeight.bold),
              ),
              Text(
                'Set the new password for your account and you can access all the features.',
                style: GoogleFonts.cairo(
                    fontSize: AppSize.s18, color: ColorManager.grey2),
              ),
              getSizedBox60(),
              AppTextField(
                hint: 'Enter new password',
                keyboardType: TextInputType.visiblePassword,
                textEditingController: _newPassword,
                suffixIcon: TextButton(
                  onPressed: () => _obsecureNewPassword = !_obsecureNewPassword,
                  child: Icon(
                    _obsecureNewPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
              ),
              getSizedBox20(),
              AppTextField(
                hint: 'Repeat password',
                keyboardType: TextInputType.visiblePassword,
                textEditingController: _repeatPassword,
                suffixIcon: TextButton(
                  onPressed: () =>
                      _obsecureRepeatPassword = !_obsecureRepeatPassword,
                  child: Icon(
                    _obsecureRepeatPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
              ),
              Spacer(),
              AppTextButton(
                  actionName: 'Confirm', onTab: _confirmChangePassword),
              getSizedBox40(),
            ],
          ),
        ),
      ),
    );
  }

  _confirmChangePassword() {}
}
