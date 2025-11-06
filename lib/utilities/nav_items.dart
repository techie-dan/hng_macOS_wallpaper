import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  const NavItem({
       super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.isSelected = false
  });

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  // bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return
     GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
          
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: widget.isSelected ? const Color(0xF5F5F5F5) : Colors.transparent,
              borderRadius: widget.isSelected? BorderRadius.circular(12) : BorderRadius.circular(0),
              border: widget.isSelected? Border.all(width: 1, color: const Color.fromRGBO(0, 0, 0, 0.1)) : Border.all(width: 0, color: Colors.transparent)
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  widget.icon,
                  size: 20,
                  color: widget.isSelected? Colors.black :  const Color.fromARGB(103, 0, 0, 0), 
                ),
                const SizedBox(width: 8),
                Text(
                  widget.label,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    fontWeight:FontWeight.w400,
                    color:  widget.isSelected? Colors.black : const Color.fromARGB(103, 0, 0, 0)
                  )
                ),
              ],
            ),
          ),
        ),
      );
    
  }
}