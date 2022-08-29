import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/model/Category.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/routs_manager.dart';
import 'package:smart_store/widgets/categories_grid_view.dart';

class SubcategoriesScreen extends StatelessWidget {
  SubcategoriesScreen({Key? key}) : super(key: key);

  final List<Category> _categories = <Category>[
    Category('Furniture', ImageAssets.category1),
    Category('Fashion', ImageAssets.category2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Subcategories',
            style: GoogleFonts.cairo(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: CategoriesGridView(categories: _categories,onTab:(){},),
    );
  }
}
