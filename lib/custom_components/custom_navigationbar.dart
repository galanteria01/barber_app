import 'package:flutter/cupertino.dart';

class CustomNavigationBarItem{
  CustomNavigationBarItem({this.iconData});
  IconData iconData;
}

class CustomNavigationBar extends StatefulWidget {

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();

  CustomNavigationBar({
    this.items,
    this.centerItemText,
    this.height: 60.0,
    this.iconSize: 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
});
  final List<CustomNavigationBarItem> items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    List items = List.generate(widget.items.length, (index) => {

    });
  }
}
