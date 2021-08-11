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
import 'package:google_fonts/google_fonts.dart';

class ComboBox {
  static title({String title, Color accent = Colors.blue}) => DropdownMenuItem(
    value: title,
    child: Container(
      child: Row(
        children: <Widget>[
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(shape: BoxShape.circle, color: accent),
          child: Center(
            child: Text(
              title.substring(0, 1),
              style: GoogleFonts.quicksand(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800)
            ),
          ),
        ),
        SizedBox(width: 16),
        Text(
          title,
          style: GoogleFonts.quicksand(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w800),
          overflow: TextOverflow.fade,
          softWrap: false,
        ),
        ],
      ),
    ),
  );

  static titleSubTitle({String title, String description, Color accent = Colors.purple}) => DropdownMenuItem(
    value: title,
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: accent,
          ),
          child: Center(
            child: Text(
              title.substring(0, 1),
              style: GoogleFonts.quicksand(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800)
            ),
          ),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.quicksand(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
              overflow: TextOverflow.fade,
              softWrap: false,
            ),
            Text(
              description,
              style: GoogleFonts.quicksand(color: Colors.grey, fontSize: 10),
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
          ],
        ),
        ],
      ),
    ),
  );

  static iconTitle({IconData icon, String title, Color background = Colors.indigo}) => DropdownMenuItem(
    value: title,
    child: Container(
      child: Row(
        children: <Widget>[
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: background,
          ),
          child: Center(child: Icon(icon, color: Colors.white, size: 18)),
        ),
        SizedBox(width: 16),
        Text(
          title,
          style: GoogleFonts.quicksand(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          overflow: TextOverflow.fade,
          softWrap: false,
        ),
        ],
      ),
    ),
  );
}
