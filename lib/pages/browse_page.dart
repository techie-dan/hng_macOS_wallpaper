import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_wallpaper/components/wallpaper_card.dart';
import 'package:live_wallpaper/widgets/build_list_item.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({super.key, this.onNavigateToSetup});
  final Function(String category, {String wallpaper, String imageUrl})? onNavigateToSetup;

  @override
  State<BrowsePage> createState() {
    return _BrowsePageState();
  }
}

class _BrowsePageState extends State<BrowsePage> {
  bool isGridView = true; // Track current view mode
  bool isCardClicked = false; // Tracks if card is clicked

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
              child: Text(
                'Browse Categories',
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
            SizedBox(
              width: 1346,
              child: Row(
                children: [
                  Text(
                    'Explore our curated collections of stunning wallpapers',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 87, 87, 87),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isGridView = true;
                          });
                        },
                        icon: Icon(Icons.grid_view),
                        color: isGridView ? Color(0xFFFBB03B) : Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isGridView = false;
                          });
                        },
                        icon: Icon(Icons.view_agenda_outlined),
                        color: !isGridView ? Color(0xFFFBB03B) : Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            SizedBox(height: 4),
            // Grid View
            if (isGridView) ...[
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
                      onTap: () {
                        widget.onNavigateToSetup?.call(
                          'Nature',
                          wallpaper: 'Wallpaper 1',
                          imageUrl: 'assets/images/wallpaper_one.png',
                        );
                      },
                    ),
                    WallpaperCard(
                      imageUrl: 'assets/images/wallpaper_two.png',
                      title: 'Abstract',
                      subtitle: 'Modern Geomentric and artistic designs',
                      buttonText: '4 Wallpapers',
                      onTap: () {
                        widget.onNavigateToSetup?.call(
                          'Abstract',
                          wallpaper: 'Wallpaper 2',
                          imageUrl: 'assets/images/wallpaper_two.png',
                        );
                      },
                    ),
                    WallpaperCard(
                      imageUrl: 'assets/images/wallpaper_three.png',
                      title: 'Urban',
                      subtitle: 'Cities architecture and street',
                      buttonText: '6 Wallpapers',
                      onTap: () {
                        widget.onNavigateToSetup?.call(
                          'Urban',
                          wallpaper: 'Wallpaper 3',
                          imageUrl: 'assets/images/wallpaper_three.png',
                        );
                      },
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
                      onTap: () {
                        widget.onNavigateToSetup?.call(
                          'Space',
                          wallpaper: 'Wallpaper 4',
                          imageUrl: 'assets/images/wallpaper_four.png',
                        );
                      },
                    ),
                    WallpaperCard(
                      imageUrl: 'assets/images/wallpaper_five.png',
                      title: 'Minimalist',
                      subtitle: 'Clean, simple, and elegant',
                      buttonText: '4 Wallpapers',
                      onTap: () {
                        widget.onNavigateToSetup?.call(
                          'Minimalist',
                          wallpaper: 'Wallpaper 5',
                          imageUrl: 'assets/images/wallpaper_five.png',
                        );
                      },
                    ),
                    WallpaperCard(
                      imageUrl: 'assets/images/wallpaper_six.png',
                      title: 'Animals',
                      subtitle: 'Wildlife and nature photography',
                      buttonText: '4 Wallpapers',
                      onTap: () {
                        widget.onNavigateToSetup?.call(
                          'Animals',
                          wallpaper: 'Wallpaper 6',
                          imageUrl: 'assets/images/wallpaper_six.png',
                        );
                      },
                    )
                  ],
                ),
              )
            ],

            // List View
            if (!isGridView) ...[
              buildListItem('assets/images/wallpaper_one.png', 'Nature',
                  'Mountains, Forest and Landscapes', '3 wallpapers'),
              SizedBox(height: 16),
              buildListItem('assets/images/wallpaper_two.png', 'Abstract',
                  'Modern Geomentric and artistic designs', '3 wallpapers'),
              SizedBox(height: 16),
              buildListItem('assets/images/wallpaper_three.png', 'Urban',
                  'Cities, architecture and street', '6 wallpapers'),
              SizedBox(height: 16),
              buildListItem('assets/images/wallpaper_four.png', 'Space',
                  'Cosmos, planets, and galaxies', '3 wallpapers'),
              SizedBox(height: 16),
              buildListItem('assets/images/wallpaper_five.png', 'Minimalist',
                  'Clean, simple, and elegant', '3 wallpapers'),
              SizedBox(height: 16),
              buildListItem('assets/images/wallpaper_six.png', 'Animals',
                  'Wildlife and nature photography', '6 wallpapers'),
            ]
          ],
        ),
      ),
    );
  }
}