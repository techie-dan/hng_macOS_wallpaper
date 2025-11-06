import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BuildLogo extends StatelessWidget {
const BuildLogo({super.key});
@override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  Image.asset('assets/logo.png',
                  width: 16,
                  height: 16,),
                  SizedBox(width: 8,),
                  Text('Wallpaper Studio',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Colors.black,                ),
                  )
                ], 
              );
  }
}