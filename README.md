# flutter_combo_box

This package help to use custom spinner with title, title with subtitle, title with icon.

## Combobox with title
```dart
title({String title, Color accent = Colors.blue}) => DropdownMenuItem(
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
```
## Combobox with title and subtitle
```dart
titleSubTitle({String title, String description, Color accent = Colors.purple}) => DropdownMenuItem(
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
```
## Combobox with icon and title
```dart
iconTitle({IconData icon, String title, Color background = Colors.indigo}) => DropdownMenuItem(
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
```
## Screenshots

![Global apearence](https://github.com/ChrisMukasa/flutter_combo_box/../../../../example/screenshots/1.png)
![Expanded Spinner](https://github.com/ChrisMukasa/flutter_combo_box/../../../../example/screenshots/2.png)


For help getting started with Combobox package, view our 
[Gith repository](https://github.com/ChrisMukasa/flutter_combo_box)