import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_wallpaper/components/wallpaper_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  // Store active wallpaper info
  Map<String, String>? activeWallpaper;

  void updateActiveWallpaper(String category, String selection, String imageUrl) {
    setState(() {
      activeWallpaper = {
        'category': category,
        'selection': selection,
        'imageUrl': imageUrl,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Active Wallpaper Card - Only show if wallpaper is set
            if (activeWallpaper != null) ...[
              Container(
                width: 1346,
                padding: EdgeInsets.all(24),
                margin: EdgeInsets.only(bottom: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFE5E5E5), width: 1),
                ),
                child: Row(
                  children: [
                    // Wallpaper thumbnail
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(activeWallpaper!['imageUrl']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    // Wallpaper info
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [Color(0xFFFBB03B), Color(0xFFEC0C43)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(
                                Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                            child: Text(
                              'Your Active Wallpaper',
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'This wallpaper is currently set as your active background',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF808080),
                            ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Text(
                                'Category - ',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF808080),
                                ),
                              ),
                              Text(
                                activeWallpaper!['category']!,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                'Selection - ',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF808080),
                                ),
                              ),
                              Text(
                                activeWallpaper!['selection']!,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Action buttons
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share_outlined),
                          style: IconButton.styleFrom(
                            backgroundColor: const Color(0xFFF5F5F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.settings_outlined),
                          style: IconButton.styleFrom(
                            backgroundColor: const Color(0xFFF5F5F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],

            // Original content
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Color(0xFFFBB03B), Color(0xFFEC0C43)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Text(
                'Discover Beautiful Wallpapers',
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1,
                  fontFamily: 'ClashDisplay',
                  fontSize: 60,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Discover curated collections of stunning wallpapers. \nBrowse by category, preview in full-screen, and set your favorites.',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 87, 87, 87),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 1346,
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                        color: const Color(0x80808080),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 4),
            SizedBox(
              width: 1346,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WallpaperCard(
                    imageUrl: 'assets/images/wallpaper_one.png',
                    title: 'Nature',
                    subtitle: 'Mountains, Forest and Landscapes',
                    buttonText: '3 Wallpapers',
                    onTap: () {},
                  ),
                  WallpaperCard(
                    imageUrl: 'assets/images/wallpaper_two.png',
                    title: 'Abstract',
                    subtitle: 'Modern Geomentric and artistic designs',
                    buttonText: '4 Wallpapers',
                    onTap: () {},
                  ),
                  WallpaperCard(
                    imageUrl: 'assets/images/wallpaper_three.png',
                    title: 'Urban',
                    subtitle: 'Cities architecture and street',
                    buttonText: '6 Wallpapers',
                    onTap: () {},
                  )
                ],
              ),
            ),
            SizedBox(height: 18),
            SizedBox(
              width: 1346,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WallpaperCard(
                    imageUrl: 'assets/images/wallpaper_four.png',
                    title: 'Space',
                    subtitle: 'Cosmos, planets, and galaxies',
                    buttonText: '3 Wallpapers',
                    onTap: () {},
                  ),
                  WallpaperCard(
                    imageUrl: 'assets/images/wallpaper_five.png',
                    title: 'Minimalist',
                    subtitle: 'Clean, simple, and elegant',
                    buttonText: '4 Wallpapers',
                    onTap: () {},
                  ),
                  WallpaperCard(
                    imageUrl: 'assets/images/wallpaper_six.png',
                    title: 'Animals',
                    subtitle: 'Wildlife and nature photography',
                    buttonText: '4 Wallpapers',
                    onTap: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}