import 'package:flutter/material.dart';

class WallpaperCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onTap;

  const WallpaperCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.onTap,
  }); 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 435.33,
        height: 290.71,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
      
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox.expand(
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Background Image
                Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
           
                
                // Content
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          
                        ),
                      ),
                      const SizedBox(height: 2),
                      Container(
                        width: 110,
                        height: 26,
                       
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            const Color.fromARGB(78, 255, 255, 255),
                            const Color.fromARGB(0, 207, 207, 207),
                            const Color.fromARGB(0, 238, 238, 238),
                            const Color.fromARGB(50, 255, 255, 255)
                          ]),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: .5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            buttonText,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}