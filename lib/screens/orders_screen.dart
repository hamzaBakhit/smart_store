import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'cart submit',
          style: GoogleFonts.cairo(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: AppSize.s22,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: [
              CircleAvatar(
                radius: 40,
                child: Image.asset(
                  ImageAssets.splashLogo,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Text('order 1'),
                  Text('total'),
                  Text('payment type'),
                ],
              ),
              Column(
                children: [
                  Text('date'),
                  Text('deliverd'),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
