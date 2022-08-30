import 'package:flutter/material.dart';
import 'package:smart_store/screens/about_us_screen.dart';
import 'package:smart_store/screens/addresses/adresses_screen.dart';
import 'package:smart_store/screens/addresses/new_address_screen.dart';
import 'package:smart_store/screens/app/categories_screen.dart';
import 'package:smart_store/screens/app/drawer/my_likes_screen.dart';
import 'package:smart_store/screens/app/favorite_product_screen.dart';
import 'package:smart_store/screens/app/home_screen.dart';
import 'package:smart_store/screens/app/latest_product.dart';
import 'package:smart_store/screens/app/product_screen.dart';
import 'package:smart_store/screens/app/subcategories_screen.dart';
import 'package:smart_store/screens/auth/login_screen/change_password.dart';
import 'package:smart_store/screens/auth/login_screen/forgote_password.dart';
import 'package:smart_store/screens/auth/login_screen/login_screen.dart';
import 'package:smart_store/screens/auth/register_screen/register_screen.dart';
import 'package:smart_store/screens/auth/register_screen/verify_register_screen.dart';
import 'package:smart_store/screens/payment/credit_card.dart';
import 'package:smart_store/screens/launch_screen/launch_screen.dart';
import 'package:smart_store/screens/notification_screen.dart';
import 'package:smart_store/screens/onboarding/onboarding_screen.dart';
import 'package:smart_store/screens/settings_screen.dart';

mixin Routs {
  static const String launchRoute = "/";
  static const String onboardingScreen = "/onboarding_screen";
  static const String loginScreen = "/login_screen";
  static const String forgotPassword = "/forgot_password";
  static const String changePasswordScreen = "/change_password_screen";
  static const String registerScreen = "/register_screen";
  static const String VerifyRegisterScreenScreen = "/verify_register_screen";
  static const String homeScreen = "/home_screen";
  static const String favoriteProductScreen = "/favorite_product_screen";
  static const String categoriesScreen = "/categories_screen";
  static const String latestProductScreen = "/latest_product_screen";
  static const String subcategoriesScreen = "/subcategories_screen";
  static const String productScreen = "/product_screen";
  static const String addressesScreen = "/addresses_screen";
  static const String newAddressScreen = "/new_address_screen";
  static const String notificationScreen = "/notification_screen";
  static const String settingsScreen = "/settings_screen";
  static const String creditCardScreen = "/credit_card_screen";
  static const String myLikesScreen = "/my_likes_screen";
  static const String aboutScreen = "/about_us_screen";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routs.launchRoute:
        return MaterialPageRoute(builder: (_) => const LaunchScreen());
      case Routs.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routs.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routs.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case Routs.changePasswordScreen:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
      case Routs.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routs.VerifyRegisterScreenScreen:
        return MaterialPageRoute(builder: (_) => const VerifyRegisterScreen());
      case Routs.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routs.favoriteProductScreen:
        return MaterialPageRoute(builder: (_) => FavoriteProductScreen());
      case Routs.categoriesScreen:
        return MaterialPageRoute(builder: (_) => CategoriesScreen());
      case Routs.latestProductScreen:
        return MaterialPageRoute(builder: (_) => LatestProduct());
      case Routs.subcategoriesScreen:
        return MaterialPageRoute(builder: (_) => SubcategoriesScreen());
      case Routs.productScreen:
        return MaterialPageRoute(builder: (_) => const ProductScreen());
      case Routs.addressesScreen:
        return MaterialPageRoute(builder: (_) => const AddressesScreen());
      case Routs.newAddressScreen:
        return MaterialPageRoute(builder: (_) => const NewAddressScreen());
      case Routs.notificationScreen:
        return MaterialPageRoute(builder: (_) => NotificationScreen());
      case Routs.settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case Routs.creditCardScreen:
        return MaterialPageRoute(builder: (_) => CreditCardScreen());
      case Routs.myLikesScreen:
        return MaterialPageRoute(builder: (_) => const MyLikeScreen());
      case Routs.aboutScreen:
        return MaterialPageRoute(builder: (_) => const AboutUsScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('NO ROUTE FOUND'),
        ),
        body: const Text('NO ROUTE FOUND'),
      ),
    );
  }
}
