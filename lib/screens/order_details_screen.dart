import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImageAssets.product2),
              Card(
                elevation: 4,
                color: ColorManager.primary.withOpacity(0.4),
                child: Column(
                  children: [
                    Text(
                      'order name',
                      style: GoogleFonts.cairo(
                        color: ColorManager.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    getSizedBox40(),
                    Text(
                      'quanitty',
                      style: GoogleFonts.cairo(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Number',
                      style: GoogleFonts.cairo(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Total',
                      style: GoogleFonts.cairo(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Date',
                      style: GoogleFonts.cairo(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }));
  }
}
