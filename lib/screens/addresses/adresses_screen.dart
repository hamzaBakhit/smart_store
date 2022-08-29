import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/model/address.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/routs_manager.dart';
import 'package:smart_store/presintation/resources/static_widget_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';

class AddressesScreen extends StatefulWidget {
  const AddressesScreen({Key? key}) : super(key: key);

  @override
  State<AddressesScreen> createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
  List<Address> addresses = [
    Address('saftawee', 'shaker harb', '0594433839', 'gaza'),
    Address('saftawee', 'shaker harb', '0594433839', 'gaza'),
    Address('saftawee', 'shaker harb', '0594433839', 'gaza'),
    Address('saftawee', 'shaker harb', '0594433839', 'gaza'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Addresses',
          style: GoogleFonts.cairo(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToNewAddressScreen();
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: addresses.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: ColorManager.grey2.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)),
              width: double.infinity,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(addresses[index].name,
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.bold,
                              fontSize: AppSize.s16,
                              color: ColorManager.primary)),
                      Text(addresses[index].info, style: GoogleFonts.cairo()),
                      Text(addresses[index].contactNumber,
                          style: GoogleFonts.cairo()),
                      Text(addresses[index].city, style: GoogleFonts.cairo()),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_circle,
                          color: ColorManager.error,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _navigateToNewAddressScreen() {
    Navigator.pushNamed(context, Routs.newAddressScreen);
  }
}
