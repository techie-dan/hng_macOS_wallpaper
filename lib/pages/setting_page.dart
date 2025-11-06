
//browsepage.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_wallpaper/components/wallpaper_card.dart';



class SettingPage extends StatefulWidget {
const SettingPage({super.key});

@override
  State<SettingPage> createState() {
    return _SettingPageState();
  }

}

class _SettingPageState extends State<SettingPage>{
  bool isGridView = true; // Track current view mode
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1346 ,
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
            child: Text('Settings',
            textAlign: TextAlign.left, style: TextStyle(
              height: 1,
              fontFamily: 'ClashDisplay',
              fontSize: 60,
                fontWeight: FontWeight.w500,
                color: Colors.white,      
            ),),
          ),
         
  SizedBox(height: 8,),
              Text('Customize your Wallpaper Studio experience',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 87, 87, 87)
              ),
              ),
          SizedBox(height:  120,),

             Center(
               child: Container(
                width: 1343.04,
                height: 628,
                padding: EdgeInsets.symmetric(horizontal: 151, vertical: 35),
                decoration: BoxDecoration( 
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(36),
                        border: Border.all(width: 1, color: const Color.fromRGBO(0, 0, 0, 0.1)),
                        
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                    Text(
                      'Wallpaper Setup',
                     style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,  
                      fontStyle: FontStyle.normal, 
                     ),
                     
                     
                    ),
                    SizedBox(height: 8,),
                     Text(
                      'Configure your wallpaper settings and enable auto-rotation',
                     style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,  
                      color: Colors.black, 
                      

                     ),
                     
                     
                    ),

                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 569,
                      // height: 114,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color(0xE5E5E5E5),

                        ),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Image Quality',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                         const   SizedBox(height: 8,),
                         DropdownButtonFormField<String>(
                          initialValue: 'High',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0x9C9C9C9C)
                          ),
                          items:  [
                          DropdownMenuItem(value: 'Low', child: Text('Low (Faster)', style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0x9C9C9C9C)
                          ))),
                          DropdownMenuItem(value: 'Meduim', child: Text('Medium Quality', style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0x9C9C9C9C)
                          ),)),
                           DropdownMenuItem(value: 'High', child: Text('High (Best Qaulity)', style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0x9C9C9C9C)
                          ),)),

                         ], onChanged: (value){},
                         icon: Icon(Icons.keyboard_arrow_down),
                         decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: const Color(0xE5E5E5E5),
                            width: 1
                            ),
                            
                            
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: const Color(0xE5E5E5E5),
                            width: 1
                            ),
                            
                            
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: const Color(0xE5E5E5E5),
                            width: 1
                            ),
                            
                            
                          ),
                          
                         ),
                         
                         )
                             
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(

                     padding: EdgeInsets.all(20),
                      width: 569,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color(0xE5E5E5E5),

                        ),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Notification', style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ), ),
                                Spacer(),
                                Switch(value: true, onChanged: (val){},
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
                               
                                
                                )
                              ],
                            ),
                            Text('Get notified about new wallpapers and update', style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0x9C9C9C9C)
                            ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    SizedBox(
                      width: 569,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: const Color(0xF8F8F8F8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21)
                      )
                            ), child: Text('Cancel',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Colors.black
                      ) ,
                                        
                                        ),
                                        
                                        ),
                                        SizedBox(width: 20,),
                     ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: const Color(0xFFFBB03B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21)
                      )
                            ), child: Text('Save Settings',
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
                    )
                    


                  ],),
                  Spacer(),
                       Image.asset('assets/images/phone_frame.png', width: 248.51,
                        height: 520.03,)
                 ] 
                ),
               ),
             )
             
        
       
          
               
            ],
          
        
        ),
      ),
    );
  }
  
  
}