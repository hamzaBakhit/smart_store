import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key, required this.image, required this.productName, required this.price,required this.isFavorite}) : super(key: key);

  final String image;
  final String productName;
  final double price;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                color: ColorManager.primary.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            IconButton(onPressed: (){}, icon: Icon(isFavorite?Icons.favorite:Icons.favorite_border,color:Colors.red,),),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(productName,style: GoogleFonts.cairo(fontWeight: FontWeight.bold,),),
            Text(price.toString(),),
          ],
        ),
      ],
    );
  }
}
