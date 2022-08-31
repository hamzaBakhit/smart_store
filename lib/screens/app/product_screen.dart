import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rate/rate.dart';
import 'package:smart_store/model/Product_detailes.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';
import 'package:smart_store/widgets/category_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<String> _images = [
    ImageAssets.product2,
    ImageAssets.product1,
  ];

  final ProductDetails _productDetails = ProductDetails(
    [ImageAssets.product2, ImageAssets.product1],
    'jjj',
    'hslka',
    2.0,
    5.0,
    true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 120),
        child: Column(
          children: [
            // image slider
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500, maxHeight: 200),
              child: PageView.builder(
                itemCount: _images.length,
                controller: _pageController,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                onPageChanged: (int value) {},
                itemBuilder: (BuildContext context, int index) =>
                    CategoryWidget(image: _images[index]),
              ),
            ),
            // details
            Column(
              children: [
                Text(
                  'name',
                  style: GoogleFonts.cairo(
                      fontSize: AppSize.s16,
                      color: ColorManager.primary,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'info',
                  style: GoogleFonts.cairo(
                      color: ColorManager.primary, fontWeight: FontWeight.w300),
                ),
                Text(
                  'price',
                  style: GoogleFonts.cairo(
                      color: ColorManager.primary, fontWeight: FontWeight.w300),
                ),
                Rate(
                  iconSize: 40,
                  color: ColorManager.primary,
                  allowHalf: true,
                  allowClear: true,
                  initialValue: 3.5,
                  readOnly: false,
                  onChange: (value) => print(value),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    primary: ColorManager.primary,
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    child: Icon(_productDetails.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
