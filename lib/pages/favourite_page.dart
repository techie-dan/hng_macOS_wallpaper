import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_wallpaper/components/wallpaper_card.dart';



class FavouritePage extends StatefulWidget {
const FavouritePage({super.key});

@override
  State<FavouritePage> createState() {
    return _FavouritePageState();
  }

}

class _FavouritePageState extends State<FavouritePage>{
  bool isGridView = true; // Track current view mode
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1346,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          
             crossAxisAlignment: CrossAxisAlignment.start,
           
              
        children: [
          ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          colors: [Color(0xFFFBB03B), Color(0xFFEC0C43)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
        ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
            child: Text('Saved Wallpapers',
            textAlign: TextAlign.left, style: TextStyle(
              height: 1,
              fontFamily: 'ClashDisplay',
              fontSize: 60,
                fontWeight: FontWeight.w500,
                color: Colors.white,      
            ),),
          ),
         
  
              Text('Your saved wallpapers collection',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color:   const Color.fromARGB(255, 87, 87, 87)
              ),
              ),
          SizedBox(height:  120,),

              SizedBox(
                width: 1346,
                child: Center(
                 child: Column(
                  children: [
                    Image.asset('assets/images/no_wallpaper.png',
                    width: 197.57,
                    height: 185.29,
                    ),
                    Text('No Saved Wallpapers',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    SizedBox(height: 12,),
                    Text('Start saving your favorite wallpapers to see them here',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      color: const Color(0x57575757)
                    ),
                    
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: const Color(0xFFFBB03B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21)
                      )
                
                    ), child: Text('Browse Wallpaers',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Colors.white
                      ) ,
                    
                    ),
                    
                    )
                  ],
                
                 ),
                ),
              )
             
        
       
          
               
            ],
          
        
        ),
      ),
    );
  }
  
  
}