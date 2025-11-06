import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwitchCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SwitchCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E5E5)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF808080),
                  ),
                ),
              ],
            ),
          ),
          Switch(
            value: value,
            onChanged: (val){},
            thumbColor: WidgetStateProperty.resolveWith((states){
                                  if (states.contains(WidgetState.selected)){
                                    return Colors.white;
                                  }
                                  return Colors.white;
                                }),
                                trackColor: WidgetStateProperty.resolveWith((states){
                                  if (states.contains(WidgetState.selected)){
                                    return Colors.orange;
                                  }
                                  return Colors.orange;
                                }),
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                               
          ),
        ],
      ),
    );
  }
}