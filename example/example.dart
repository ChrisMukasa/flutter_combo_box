import 'package:flutter/material.dart';
import 'package:flutter_combo_box/flutter_combo_box.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampleComboBoxPage extends StatefulWidget {

  @override
  _ExampleComboBoxPageState createState() => _ExampleComboBoxPageState();
}

class Gender{
  final String? title;
  final String? subtitle;

  Gender({this.title, this.subtitle});
}

class _ExampleComboBoxPageState extends State<ExampleComboBoxPage> {
  
  var genders = ['Male', 'Female', 'Undefined'];
  var genderTitleSubTitles = [
    Gender(title: 'Male'     , subtitle: 'The male gender'),
    Gender(title: 'Female'   , subtitle: 'The female gender'),
    Gender(title: 'Undefined', subtitle: 'The undefined gender')
  ];

  String selectedGender = '';
  var selectedGenderTitleSubTitle = Gender();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Container(
              child: Center(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    labelText: 'Gender',
                    hintText: 'Please select the gender here',
                    hintStyle: GoogleFonts.quicksand(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w800),
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black26),
                      gapPadding: 16,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black26),
                      gapPadding: 16,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black26),
                      gapPadding: 16,
                    ),
                  ),
                  items: genders.map((item) {
                    return DropdownMenuItem(
                      child: ComboBoxTitle(title: item, accent: Colors.red),
                      value: item,
                    );
                  }).toList(),
                  onChanged: (value) => setState(() => selectedGender = value ?? 'N/A'),
                  value: selectedGender,
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              child: Center(
                child: DropdownButtonFormField<Gender>(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    labelText: 'Gender with Subtitle',
                    hintText: 'Please select the gender here',
                    hintStyle: GoogleFonts.quicksand(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w800),
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black26),
                      gapPadding: 16,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black26),
                      gapPadding: 16,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black26),
                      gapPadding: 16,
                    ),
                  ),
                  items: genderTitleSubTitles.map((item) {
                    return DropdownMenuItem(
                      child: ComboBoxTitleSubTitle(title: item.title, subtitle: item.subtitle, accent: Colors.red),
                      value: item,
                    );
                  }).toList(),
                  onChanged: (value) => setState(() => selectedGenderTitleSubTitle = value ?? Gender()),
                  value: selectedGenderTitleSubTitle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}