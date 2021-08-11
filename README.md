# flutter_combo_box

This package help to use custom spinner with title, title with subtitle, title with icon.

[![Build Status](https://api.cirrus-ci.com/github/flutter/plugins.svg)](https://github.com/ChrisMukasa/flutter_combo_box/blob/master)
[![Release Status](https://github.com/flutter/plugins/actions/workflows/release.yml/badge.svg)](https://github.com/ChrisMukasa/flutter_combo_box/actions/workflows/release.yml)

## Usage
[Example link](https://github.com/ChrisMukasa/flutter_combo_box/blob/master/example/example.dart)

To use this plugin, add flutter_combo_box as a [dependency in your pubspec.yaml file.](https://flutter.dev/docs/development/platform-integration/platform-channels)

### Hou to use this package
  
```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_combo_box: ^0.0.2+3 # 👈🏼 add this line
```

* Import the package to your main file
```dart
import 'package:flutter_combo_box/flutter_combo_box.dart';
```
## Combobox Tile Types
* Combobox with Title
* ComboBox with Title and subtitle
* ComboBox with Icon and title
### Title
```dart
TileTitle({String title, Color accent = Colors.blue})
```
### Title and subtitle
```dart
TileTitleSubTitle({String title, String description, Color accent = Colors.purple})
```
### Icon and title
```dart
TileIconTitle({IconData icon, String title, Color background = Colors.indigo})
```
## Example
```dart
import 'package:flutter/material.dart';
import 'package:flutter_combo_box/components/combo_box.dart';
import 'package:flutter_combo_box/flutter_combo_box.dart';

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

  late Future<List<dynamic>> datas;

  String selectedGender = '';
  var selectedGenderTitleSubTitle = Gender();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: ComboBoxFuture(
                label: 'Custom label', 
                hint: 'Custom hint', 
                datas: datas,
                onChanged: (item){},
              )
            ),
            SizedBox(height: 16),
            Container(
              child: Center(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    labelText: 'Gender',
                    hintText: 'Please select the gender here',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w800),
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
                      child: TileTitle(title: item, accent: Colors.red),
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
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w800),
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
                      child: TileTitleSubTitle(title: item.title, subtitle: item.subtitle, accent: Colors.red),
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
```
## Screenshots

Global view 
![alt text](https://github.com/ChrisMukasa/flutter_combo_box/blob/master/example/screenshots/1.png?raw=true)
Expanded view
![alt text](https://github.com/ChrisMukasa/flutter_combo_box/blob/master/example/screenshots/2.png?raw=true)

For help getting started with Combobox package, view our 
[Gith repository](https://github.com/ChrisMukasa/flutter_combo_box)