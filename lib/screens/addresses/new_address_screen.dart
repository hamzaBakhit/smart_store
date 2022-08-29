import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/model/city.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';
import 'package:smart_store/widgets/app_text_button.dart';
import 'package:smart_store/widgets/app_text_field.dart';

class NewAddressScreen extends StatefulWidget {
  const NewAddressScreen({Key? key}) : super(key: key);

  @override
  _NewAddressScreenState createState() => _NewAddressScreenState();
}

class _NewAddressScreenState extends State<NewAddressScreen> {
  int? _selectedCityId;
  final List<City> _cities = <City>[
    City(1, 'gaza'),
    City(2, 'rafah'),
    City(3, 'khnyounus'),
  ];

  late TextEditingController _nameEditingController;
  late TextEditingController _infoEditingController;
  late TextEditingController _contactNumberEditingController;

  @override
  void initState() {
    _nameEditingController = TextEditingController();
    _infoEditingController = TextEditingController();
    _contactNumberEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _nameEditingController.dispose();
    _infoEditingController.dispose();
    _contactNumberEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Address Screen',
          style: GoogleFonts.cairo(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 120,left: 25,right: 25),
          child: Column(
            children: [
              AppTextField(
                  hint: 'Name',
                  keyboardType: TextInputType.name,
                  textEditingController: _nameEditingController),
              getSizedBox20(),
              AppTextField(
                  hint: 'Info',
                  keyboardType: TextInputType.name,
                  textEditingController: _infoEditingController),
              getSizedBox20(),
              AppTextField(
                  hint: 'Contact number',
                  keyboardType: TextInputType.name,
                  textEditingController: _contactNumberEditingController),
              getSizedBox20(),
              DropdownButton<int>(
                isExpanded: true,
                hint: const Text('Select country'),
                style: GoogleFonts.cairo(color: Colors.black),
                items: _cities
                    .map(
                      (city) => DropdownMenuItem<int>(
                        value: city.cityId,
                        child: Text(
                          city.cityName,
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (int? value) {
                  setState(() => _selectedCityId = value);
                },
                value: _selectedCityId,
                onTap: () {},
                //*******************//
                borderRadius: BorderRadius.circular(20),
                elevation: 12,
                //****************//
                dropdownColor: Colors.grey.shade300,
                icon: const Icon(Icons.arrow_drop_down),
                //***************//
                itemHeight: 48,
                underline: const Divider(color: Colors.transparent),
              ),
              Spacer(),
              AppTextButton(actionName: 'Add address', onTab: (){}),
              getSizedBox40(),
            ],
          ),
        ),
      ),
    );
  }
}
