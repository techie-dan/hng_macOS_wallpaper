//live_wallpaper.dart

import 'package:flutter/material.dart';
import 'package:live_wallpaper/pages/browse_page.dart';
import 'package:live_wallpaper/pages/home_page.dart';
import 'package:live_wallpaper/pages/favourite_page.dart';
import 'package:live_wallpaper/pages/setting_page.dart';

import 'package:live_wallpaper/widgets/build_logo.dart';
import 'package:live_wallpaper/components/navigation.dart';
import 'package:live_wallpaper/pages/setup_page.dart';

class LiveWallpaper extends StatefulWidget {
  const LiveWallpaper({super.key});
  
  @override
  State<LiveWallpaper> createState() {
    return _LiveWallpaperState();
  }
}

class _LiveWallpaperState extends State<LiveWallpaper> {
  int _selectedIndex = 0;
  bool _isViewingSetup = false;
  String _selectedCategory = '';
  String _selectedWallpaper = '';
  String _selectedImageUrl = '';
  
  // GlobalKey to access HomePage state
  final GlobalKey<HomePageState> _homePageKey = GlobalKey<HomePageState>();

  void _navigateToSetup(String category, {String wallpaper = '', String imageUrl = ''}) {
    setState(() {
      _isViewingSetup = true;
      _selectedCategory = category;
      _selectedWallpaper = wallpaper;
      _selectedImageUrl = imageUrl;
    });
  }

  void _handleSaveSettings(String category, String selection, String imageUrl) {
    // Update the home page with the active wallpaper
    _homePageKey.currentState?.updateActiveWallpaper(category, selection, imageUrl);
    
    // Update the stored values
    setState(() {
      _selectedCategory = category;
      _selectedWallpaper = selection;
      _selectedImageUrl = imageUrl;
    });
  }

  List<Widget> get _pages => [
    HomePage(key: _homePageKey),
    BrowsePage(onNavigateToSetup: _navigateToSetup),
    const FavouritePage(),
    const SettingPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _isViewingSetup = false;
    });
  }

  void _exitSetupPage() {
    setState(() {
      _isViewingSetup = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 98,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          shadowColor: const Color.from(alpha: .1, red: 0, green: 0, blue: 0),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 47),
            child: Row(
              children: [
                const BuildLogo(),
                Spacer(),
                Navigation(
                  selectedIndex: _selectedIndex,
                  onItemTapped: _onItemTapped,
                )
              ],
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
            color: const Color.fromARGB(248, 248, 248, 248),
          ),
          child: Center(
            child: _isViewingSetup
                ? SetupPage(
                    category: _selectedCategory,
                    wallpaper: _selectedWallpaper,
                    imageUrl: _selectedImageUrl,
                    onBack: _exitSetupPage,
                    onSaveSettings: _handleSaveSettings,
                  )
                : _pages[_selectedIndex],
          ),
        ),
      ),
    );
  }
}