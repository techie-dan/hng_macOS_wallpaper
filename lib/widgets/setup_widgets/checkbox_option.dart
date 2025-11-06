import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckboxOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool checked;
  final VoidCallback? onTap;

  const CheckboxOption({
    super.key,
    required this.title,
    required this.subtitle,
    required this.checked,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: checked ? const Color(0xFFFBB03B) : Colors.white,
                border: Border.all(
                  color: checked
                      ? const Color(0xFFFBB03B)
                      : const Color(0xFFD0D0D0),
                  width: 2,
                ),
              ),
              child: checked
                  ? Icon(Icons.check, size: 14, color: Colors.white)
                  : null,
            ),
            SizedBox(width: 12),
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
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0x9C9C9C9C),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}