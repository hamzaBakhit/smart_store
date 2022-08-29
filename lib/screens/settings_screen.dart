import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/routs_manager.dart';
import 'package:smart_store/presintation/resources/static_widget_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';
import 'package:smart_store/widgets/settings_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _language = 'en';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              right: AppSize.s26, left: AppSize.s26, top: AppSize.s120),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Settings',
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold, fontSize: AppSize.s22),
                ),
                getSizedBox20(),
                Expanded(
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: _showLanguageBottomSheet,
                        child: const SettingsWidget(
                          icon: Icons.language,
                          label: 'Langauage',
                          widget: Spacer(),
                        ),
                      ),
                      InkWell(
                        onTap: _editProfile,
                        child: const SettingsWidget(
                          icon: Icons.person,
                          label: 'Profile',
                          widget: Spacer(),
                        ),
                      ),
                      InkWell(
                        onTap: _editPhoneNumber,
                        child: const SettingsWidget(
                          icon: Icons.edit,
                          label: 'Edit mobile number ',
                          widget: Spacer(),
                        ),
                      ),
                      InkWell(
                        onTap: _changePassword,
                        child: const SettingsWidget(
                          icon: Icons.password,
                          label: 'Change password ',
                          widget: Spacer(),
                        ),
                      ),
                      InkWell(
                        onTap: _showAddresses,
                        child: const SettingsWidget(
                          icon: Icons.location_off_rounded,
                          label: 'Addresses ',
                          widget: Spacer(),
                        ),
                      ),
                      InkWell(
                        onTap: _aboutUs,
                        child: const SettingsWidget(
                          icon: Icons.data_usage,
                          label: 'About us ',
                          widget: Spacer(),
                        ),
                      ),
                      InkWell(
                        onTap: _performingLogOut,
                        child: const SettingsWidget(
                          icon: Icons.data_usage,
                          label: 'log out ',
                          widget: Spacer(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showLanguageBottomSheet() {
    getBottomSheet(
      context,
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            RadioListTile<String>(
                title: Text(
                  'English',
                  style: GoogleFonts.cairo(),
                ),
                value: 'en',
                activeColor: ColorManager.primary,
                groupValue: _language,
                onChanged: (String? value) {
                  if (value != null) {
                    setState(() {
                      _language = value;
                    });
                    Navigator.pop(context, 'en');
                  }
                }),
            RadioListTile<String>(
              title: Text(
                'العربية',
                style: GoogleFonts.cairo(),
              ),
              value: 'ar',
              activeColor: ColorManager.primary,
              groupValue: _language,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _language = value;
                  });
                  Navigator.pop(context, 'ar');
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void _editProfile() {}

  void _editPhoneNumber() {}

  _changePassword() {}

  _showAddresses() {}

  _aboutUs() {}

  _performingLogOut() {}

  _logOut() {}

  _navigateToLogInScreen() {
    Navigator.pushReplacementNamed(context, Routs.loginScreen);
  }
}
