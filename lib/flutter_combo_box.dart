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

class ComboBoxTitle extends StatelessWidget {
  final String? title;
  final Color accent;

  const ComboBoxTitle({ Key? key, this.title, this.accent = Colors.blue}) : super(key: key);

  @override
  Widget build(BuildContext context) => DropdownMenuItem(
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
              title!.substring(0, 1),
              style: GoogleFonts.quicksand(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800)
            ),
          ),
        ),
        SizedBox(width: 16),
        Text(
          title ?? 'N/A',
          style: GoogleFonts.quicksand(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w800),
          overflow: TextOverflow.fade,
          softWrap: false,
        ),
        ],
      ),
    ),
  );
}

class ComboBoxTitleSubTitle extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Color accent;

  const ComboBoxTitleSubTitle({Key? key, this.title, this.subtitle, this.accent = Colors.purple}) : super(key: key);

  @override
  Widget build(BuildContext context) => DropdownMenuItem(
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
              title!.substring(0, 1),
              style: GoogleFonts.quicksand(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800)
            ),
          ),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? 'N/A',
              style: GoogleFonts.quicksand(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
              overflow: TextOverflow.fade,
              softWrap: false,
            ),
            Text(
              subtitle ?? 'N/A',
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
}

class ComboBoxIconTitle extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Color? accent;

  const ComboBoxIconTitle({ Key? key, this.icon, this.title, this.accent }) : super(key: key);

  @override
  Widget build(BuildContext context) => DropdownMenuItem(
    value: title,
    child: Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: accent,
            ),
            child: Center(child: Icon(icon, color: Colors.white, size: 18)),
          ),
          SizedBox(width: 16),
          Text(
            title  ?? 'N/A',
            style: GoogleFonts.quicksand(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
            overflow: TextOverflow.fade,
            softWrap: false,
          ),
        ],
      ),
    ),
  );
}