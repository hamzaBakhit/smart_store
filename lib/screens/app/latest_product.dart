import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/model/Product.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/widgets/product_grid_view.dart';

class LatestProduct extends StatelessWidget {
   LatestProduct({Key? key}) : super(key: key);


  final List<Product> _products = <Product>[
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
          'Latest product',
          style: GoogleFonts.cairo(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ProductGridView(products: _products,),    );
  }
}
