library flutter_combo_box;

// ABOUT THE DEVELOPER
//
// Contacts:
//      - Names: Chris Simba Mukasa
//      - Mail: mukasa.chris7@gmail.com
//      - Phone: +243 994 802 444
//      - Address: Av. de la mission, Himbi 2, Goma, Nord-Kivu, RDC
//
// Skills:
//      - Android Native development,
//      - Flutter developer [Android, IOS, Web and Desktop],
//      - Database Manager,
//      - ApiRestFull developer (With pure PHP),
//      - Desktop Apps developer (VB.net, C#)
//
//  Copyright (c) Aug 2021.
//  All rights reserved.
//

import 'package:flutter/material.dart';

import 'components/combo_box.dart';

class ComboBoxFuture extends StatelessWidget {
  final String label;
  final String hint;
  final String loadingHint;
  final Color accent;
  final Future<List<dynamic>> datas;
  final ValueChanged<dynamic>? onChanged;

  const ComboBoxFuture({ Key? key, required this.label, required this.hint, this.loadingHint = '', this.accent = Colors.blue, this.onChanged, required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      initialData: [],
      future: datas,
      builder: (_, snapshot) {
        if (!snapshot.hasData) {
          Text(loadingHint);
        } else {
          return DropdownButtonFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              labelText: label,
              hintText: hint,
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
            items: snapshot.data!.map((item) {
              return DropdownMenuItem(
                child: TileTitle(title: item, accent: accent),
                value: item,
              );
            }).toList(),
            onChanged: (value) => onChanged!(value),
          );
        }
        return Text(hint);
      },
    );
  }
}