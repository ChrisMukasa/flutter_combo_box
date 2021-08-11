import 'package:flutter/material.dart';
import 'package:flutter_combo_box/flutter_combo_box.dart';
import 'package:google_fonts/google_fonts.dart';

class ExampleComboBoxPage extends StatefulWidget {

  @override
  _ExampleComboBoxPageState createState() => _ExampleComboBoxPageState();
}

class _ExampleComboBoxPageState extends State<ExampleComboBoxPage> {
  
  var genders = ['MALE', 'FEMALE', 'UNDEFINED'];
  String gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
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
                child: ComboBox.title(title: item, accent: Colors.red),
                value: item,
              );
            }).toList(),
            onChanged: (value) => setState(() => gender = value),
            value: gender,
          ),
        ),
      ),
    );
  }
}