import 'package:flutter/material.dart';
import 'package:live_wallpaper/utilities/nav_items.dart';

Widget buildNavigationItems(
  {
  required int selectedIndex,
  required void Function(int) onItemTapped,
  }){
  
    return Row(
      children: [
        NavItem(icon: Icons.home_outlined, label: 'Home' ,isSelected: selectedIndex == 0, onTap: () => onItemTapped(0)),
         NavItem(icon: Icons.grid_on_rounded, label: 'Browse' , isSelected: selectedIndex == 1, onTap: () => onItemTapped(1)),
          NavItem(icon: Icons.favorite_border_outlined, label: 'Favourite' ,isSelected: selectedIndex == 2, onTap: () => onItemTapped(2)),
           NavItem(icon: Icons.settings_outlined, label: 'Settings', 
           isSelected: selectedIndex == 3,

           onTap: () => onItemTapped(3))
      ],
    );
}