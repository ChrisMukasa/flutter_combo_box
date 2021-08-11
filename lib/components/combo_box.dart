import 'package:flutter/material.dart';

class TileTitle extends StatelessWidget {
  final String? title;
  final Color accent;

  const TileTitle({ Key? key, this.title, this.accent = Colors.blue}) : super(key: key);

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
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800)
            ),
          ),
        ),
        SizedBox(width: 16),
        Text(
          title ?? 'N/A',
          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w800),
          overflow: TextOverflow.fade,
          softWrap: false,
        ),
        ],
      ),
    ),
  );
}

class TileTitleSubTitle extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Color accent;

  const TileTitleSubTitle({Key? key, this.title, this.subtitle, this.accent = Colors.purple}) : super(key: key);

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
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800)
            ),
          ),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? 'N/A',
              style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
              overflow: TextOverflow.fade,
              softWrap: false,
            ),
            Text(
              subtitle ?? 'N/A',
              style: TextStyle(color: Colors.grey, fontSize: 10),
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

class TileIconTitle extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Color? accent;

  const TileIconTitle({ Key? key, this.icon, this.title, this.accent }) : super(key: key);

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
            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
            overflow: TextOverflow.fade,
            softWrap: false,
          ),
        ],
      ),
    ),
  );
}