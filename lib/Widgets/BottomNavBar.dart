import 'package:flutter/material.dart';
import 'package:sharon_vincy/Widgets/BottomNavBarItem.dart';

typedef ItemBuilder = Widget Function(BuildContext context, BottomNavBarItem items);

class BottomNavBar extends StatefulWidget {
  final List<BottomNavBarItem> items;
  final int currentIndex;
  final void Function(int val) onTap;
  final Color selectedTextColor;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final Color backgroundColor;
  final double fontSize;
  final double iconSize;
  final double itemBorderRadius;
  final double borderRadius;
  final ItemBuilder itemBuilder;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final double width;
  final double elevation;

  BottomNavBar({
    Key? key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
    ItemBuilder? itemBuilder,
    required this.backgroundColor,
    required this.selectedTextColor,
    this.selectedItemColor = Colors.black,
    this.iconSize = 24.0,
    this.fontSize = 11.0,
    this.borderRadius = 0,
    this.itemBorderRadius = 8,
    required this.unselectedItemColor,
    this.margin = const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
    this.padding = const EdgeInsets.only(bottom: 0, top: 0),
    this.width = double.infinity,
    this.elevation = 0.0,
  })  : assert(items.length > 1),
        assert(items.length <= 5),
        assert(currentIndex <= items.length),
        assert(width > 50),
        itemBuilder =
            _defaultItemBuilder(
              unselectedItemColor: unselectedItemColor,
              selectedItemColor: selectedItemColor,
              borderRadius: borderRadius,
              fontSize: fontSize,
              width: width,
              backgroundColor: backgroundColor,
              currentIndex: currentIndex,
              iconSize: iconSize,
              itemBorderRadius: itemBorderRadius,
              items: items,
              onTap: onTap,
              selectedTextColor: selectedTextColor,
            ),
        super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<BottomNavBarItem> get items => widget.items;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: widget.elevation,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: widget.margin,
            child: Container(
              height: 55,
              padding: widget.padding,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                color: widget.backgroundColor,
              ),
              width: widget.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: items.map((f) {
                    return widget.itemBuilder(context, f);
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

ItemBuilder _defaultItemBuilder({
  required Function(int val) onTap,
  required List<BottomNavBarItem> items,
  required int currentIndex,
  required Color selectedTextColor,
  required Color selectedItemColor,
  required Color unselectedItemColor,
  required Color backgroundColor,
  double width = double.infinity,
  required double fontSize,
  required double iconSize,
  required double itemBorderRadius,
  required double borderRadius,
}) {
  return (BuildContext context, BottomNavBarItem item) => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: InkWell(
                onTap: () {
                  onTap(items.indexOf(item));
                },
                child: Container(
                  color: selectedItemColor,
                  width:  MediaQuery.of(context).size.width / items.length - 8,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image(
                          image: AssetImage(
                            item.icon,
                          ),
                          width: 25),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
