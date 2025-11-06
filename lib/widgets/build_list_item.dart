import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Widget buildListItem(String imageUrl, String title, String subtitle, String wallpaperCount) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: const Color.fromRGBO(0, 0, 0, 0.102)
          )
        )
        
        
        
        
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.56),
            child: Image.asset(
              imageUrl,
              width: 277.21,
              height: 185.56,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,


                  )
                ),
                SizedBox(height: 8),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 16,  
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(135, 135, 135, 0.1),
                    border: Border.all(
                        color: const Color.fromRGBO(0, 0, 0, 0.05),
                        width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  
                  ),
                  child: Text(
                    wallpaperCount,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }