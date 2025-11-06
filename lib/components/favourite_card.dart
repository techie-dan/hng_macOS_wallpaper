import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteCard extends StatefulWidget {
  final String imageUrl;
  final String title;

  final String buttonText;
  // final VoidCallback onTap;
  final bool isFavorite;
  final VoidCallback? onFavoriteToggle;

  const FavouriteCard({
    super.key,
    required this.imageUrl,
    required this.title,

    required this.buttonText,
    // required this.onTap,
    this.isFavorite = false,
    this.onFavoriteToggle,
  });

  @override
  State<FavouriteCard> createState() {
    return _WallpaperCardState();
  }
}

class _WallpaperCardState extends State<FavouriteCard> {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
    widget.onFavoriteToggle?.call();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: widget.onTap,
      child: Container(
        width: 190.18,
        height: 290.71,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background Image
              Image.asset(
                widget.imageUrl,
                width: 200,
                fit: BoxFit.cover,
              ),

              // Gradient overlay for better text visibility
              Container(
                decoration: BoxDecoration(
                  
                ),
              ),

              // Favorite Button
              Positioned(
                top: 16,
                right: 16,
                child: GestureDetector(
                  onTap: _toggleFavorite,
                  child: Container(
                    width: 40,
                    height: 40,
                    
                    decoration: BoxDecoration(
                      
                       color: _isFavorite ? Colors.white : const Color.fromARGB(55, 255, 255, 255),
                      shape: BoxShape.circle,
                      border: Border.all( width: .6, color: const Color.fromARGB(143, 255, 255, 255))
                    ),
                    child: Center(
                      child: Icon(
                        _isFavorite ? Icons.favorite : Icons.favorite_outline_outlined,
                        color: _isFavorite
                            ? const Color(0xFFFFA821)
                            : Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
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
                      widget.title,
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,


                      )
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 0.2 ),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          width: .6,
                          color: Colors.white24
                        )
                        
                      ),
                      child: Text(
                        widget.buttonText,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                        ) 
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}