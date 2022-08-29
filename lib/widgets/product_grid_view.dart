import 'package:flutter/material.dart';
import 'package:smart_store/model/Prouct.dart';

import 'product_widget.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key, required this.products}) : super(key: key);

  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => ProductWidget(
        image: products[index].image,
        productName: products[index].name,
        price: products[index].price,
        isFavorite: products[index].isFavorite,
      ),
    );
  }
}
