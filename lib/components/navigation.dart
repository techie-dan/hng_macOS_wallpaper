import 'package:flutter/material.dart';
import 'package:live_wallpaper/widgets/build_navigation_items.dart';

class Navigation extends StatefulWidget{
const Navigation({
  super.key, 
  required this.selectedIndex,
  required this.onItemTapped,


});
  final int selectedIndex;
  final void Function(int) onItemTapped;
  @override
  State<Navigation> createState() {
    return _NavigationState();
  }
}

class _NavigationState extends State<Navigation>{
  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
      ),
      child: buildNavigationItems(
        selectedIndex: widget.selectedIndex,
        onItemTapped: widget.onItemTapped
      )
    
    );
  }
}