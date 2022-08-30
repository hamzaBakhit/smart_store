import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/model/Category.dart';
import 'package:smart_store/model/Prouct.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/routs_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';
import 'package:smart_store/widgets/categories_grid_view.dart';
import 'package:smart_store/widgets/category_widget.dart';
import 'package:smart_store/widgets/home_section.dart';
import 'package:smart_store/widgets/product_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Category> _categories = <Category>[
    Category('Furniture', ImageAssets.fashion),
    Category('Fashion', ImageAssets.fashion),
  ];

  final List<Product> _products = <Product>[
    Product('shoose', ImageAssets.product1, 12.5, true),
    Product('t_shirt', ImageAssets.product2, 12.5, false),
    Product('shoose', ImageAssets.product1, 12.5, true),
    Product('shoose', ImageAssets.product1, 12.5, true),
    Product('t_shirt', ImageAssets.product2, 12.5, false),
    Product('shoose', ImageAssets.product1, 12.5, true),
  ];

  final List<Product> _productsYouMayLike = <Product>[
    Product('shoose', ImageAssets.product1, 12.5, true),
    Product('t_shirt', ImageAssets.product2, 12.5, false),
    Product('shoose', ImageAssets.product1, 12.5, true),
    Product('shoose', ImageAssets.product1, 12.5, true),
    Product('t_shirt', ImageAssets.product2, 12.5, false),
    Product('shoose', ImageAssets.product1, 12.5, true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: GoogleFonts.cairo(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _navigateToNotificationScreen,
            icon: const Image(
              image: Svg(ImageAssets.notification),
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: 200,
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.white),
                currentAccountPicture: CircleAvatar(
                  child: Image.asset(ImageAssets.person),
                ),
                accountName: Text('Hamza bakhit'),
                accountEmail: Text('hamzaqwer0599@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Home',
                    style: GoogleFonts.cairo(
                        color: ColorManager.primary,
                        fontSize: AppSize.s22,
                        fontWeight: FontWeight.bold),
                  ),
                  _getTextButton(_navigateToCategoryScreen, 'Category'),
                  _getTextButton(_navigateToMyLikeScreen, 'My likes'),
                  getSizedBox40(),
                  _getTextButton(_navigateToAboutScreen, 'About'),
                  _getTextButton(_navigateToLoginScreen, 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          // category section
          getSizedBox20(),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 80),
            child: PageView.builder(
              itemCount: _categories.length,
              controller: _pageController,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              onPageChanged: (int value) {},
              itemBuilder: (BuildContext context, int index) =>
                  CategoryWidget(image: _categories[index].image),
            ),
          ),
          // categories section
          getSizedBox20(),
          HomeSection(title: 'Categories', onPressed: _seeAllCategory),
          CategoriesGridView(
            categories: _categories,
            onTab: () {},
          ),

          // latest product section
          getSizedBox20(),
          HomeSection(title: 'Latest product', onPressed: _seeAllLatestProduct),
          ProductGridView(
            products: _products,
          ),

          // product you may like section
          getSizedBox20(),
          HomeSection(
              title: 'Product you may like', onPressed: _productYouMayLike),
          ProductGridView(
            products: _productsYouMayLike,
          ),
        ],
      ),
    );
  }

  _seeAllCategory() {
    Navigator.pushNamed(context, Routs.categoriesScreen);
  }

  _seeAllLatestProduct() {
    Navigator.pushNamed(context, Routs.latestProductScreen);
  }

  _productYouMayLike() {
    Navigator.pushNamed(context, Routs.favoriteProductScreen);
  }

  _navigateToNotificationScreen() {
    Navigator.pushNamed(context, Routs.notificationScreen);
  }

  _getTextButton(Function() onTab, String text) {
    return TextButton(
      onPressed: onTab,
      child: Text(
        text,
        style: _getTextStyle(),
      ),
    );
  }

  TextStyle _getTextStyle() {
    return GoogleFonts.cairo(
      color: Colors.black,
      fontSize: AppSize.s16,
      fontWeight: FontWeight.w500,
    );
  }

  _navigateToCategoryScreen() {
    _navigateToNewScreen(context,Routs.categoriesScreen);
  }

  _navigateToMyLikeScreen() {
    _navigateToNewScreen(context,Routs.favoriteProductScreen);
  }

  _navigateToAboutScreen() {
    _navigateToNewScreen(context,Routs.aboutScreen);
  }

  _navigateToLoginScreen() {
    Future.delayed(Duration.zero,(){
    Navigator.pushReplacementNamed(context, Routs.loginScreen);
    });
  }

  _navigateToNewScreen(BuildContext context,String routName) {
    Navigator.pop(context);
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.pushNamed(context, routName);
    });
  }
}