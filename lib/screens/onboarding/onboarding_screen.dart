import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/routs_manager.dart';
import 'package:smart_store/widgets/onboarding_content.dart';
import 'package:smart_store/widgets/page_view_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _currentPage < 2,
                replacement: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                  child: Text(
                    'START',
                    style: GoogleFonts.cairo(
                      color: ColorManager.primary,
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutBack);
                  },
                  child: Text(
                    'SKIP',
                    style: GoogleFonts.cairo(
                      color: ColorManager.primary,
                    ),
                  ),
                ),
              ),
            ),
            //page view
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                // physics: ClampingScrollPhysics(),
                // physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int currentPage) {
                  setState(() {
                    _currentPage = currentPage;
                  });
                },
                scrollDirection: Axis.horizontal,
                children: const [
                  OnBoardingContent(
                    image: ImageAssets.onboarding1,
                    title: 'Discover a New For You!',
                    subtitle: '''Lots of new products here and decide which product is best for you''',
                  ),
                  OnBoardingContent(
                    image: ImageAssets.onboarding2,
                    title: 'Find your best product!',
                    subtitle: 'Famous and quality product at affordable prices',
                  ),
                  OnBoardingContent(
                    image: ImageAssets.onboarding3,
                    title: "Express product Delivery",
                    subtitle:
                        "Your product will be delivered to your home safetly and securely",
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageViewIndicator(
                  isCurrentPage: _currentPage == 0,
                ),
                PageViewIndicator(
                  isCurrentPage: _currentPage == 1,
                ),
                PageViewIndicator(
                  isCurrentPage: _currentPage == 2,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Visibility(
              visible: _currentPage == 2,
              maintainState: false,
              maintainAnimation: false,
              maintainSize: false,
              replacement: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 6),
                      ],
                      color: ColorManager.primary),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _pageController.nextPage(duration: Duration(milliseconds: 1000), curve: Curves.easeInOutBack);
                      });
                    },
                    child: const Text(
                      'Next',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0.0,
                      minimumSize: const Size(double.infinity, 50),
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(10)
                      // ),
                    ),
                  ),

                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 6),
                      ],
                      color: ColorManager.primary),
                  child: ElevatedButton(
                    onPressed: () {
                      // todo: navigate
                      Navigator.pushReplacementNamed(context, Routs.loginScreen);
                    },
                    child: const Text(
                      'START',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0.0,
                      minimumSize: const Size(double.infinity, 50),
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(10)
                      // ),
                    ),
                  ),

                ),
              ),
            ),

            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
