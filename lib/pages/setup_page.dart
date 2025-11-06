import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_wallpaper/components/favourite_card.dart';
import 'package:live_wallpaper/widgets/build_preview_view.dart';
import 'package:live_wallpaper/widgets/build_setup_view.dart';

class SetupPage extends StatefulWidget {
  const SetupPage({super.key,
    required  this.category,
    required this.onBack,
    this.wallpaper = '',
    this.imageUrl = '',
    this.onSaveSettings,
  });

    final String category;
  final VoidCallback onBack;
  final String wallpaper;
  final String imageUrl;
  final Function(String category, String selection, String imageUrl)? onSaveSettings;
  
  @override
  State<SetupPage> createState() => _SetupPageState();
}
class _SetupPageState extends State<SetupPage> {
  
  bool _showSetupView = false;

  
  void _onSetToWallpaper() {
    setState(() {
      _showSetupView = true;
    });
  }

  void _onCancel() {
    setState(() {
      _showSetupView = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: 1346,
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // LEFT COLUMN WITH OVERLAY
                  Stack(
                    children: [
                      SizedBox(
                        width: 611,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton.icon(
                              onPressed: widget.onBack,
                              icon: Icon(
                                Icons.arrow_back_outlined,
                                size: 24,
                                color: Colors.black,
                              ),
                              label: Text(
                                'Back to Categories',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0x97979797)),
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Text(
                                  widget.category,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    height: 1,
                                    fontFamily: 'ClashDisplay',
                                    fontSize: 48,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FavouriteCard(
                                    imageUrl: 'assets/images/wallpaper_seven.png',
                                    title: 'Nature 1',
                                    buttonText: 'Nature'),
                                FavouriteCard(
                                    imageUrl: 'assets/images/wallpaper_eight.png',
                                    title: 'Nature 2',
                                    buttonText: 'Nature'),
                                FavouriteCard(
                                    imageUrl: 'assets/images/wallpaper_nine.png',
                                    title: 'Nature 3',
                                    buttonText: 'Nature')
                              ],
                            ),
                            SizedBox(height: 23),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FavouriteCard(
                                    imageUrl: 'assets/images/wallpaper_ten.png',
                                    title: 'Nature 4',
                                    buttonText: 'Nature'),
                                FavouriteCard(
                                    imageUrl:
                                        'assets/images/wallpaper_eleven.png',
                                    title: 'Nature 5',
                                    buttonText: 'Nature'),
                                FavouriteCard(
                                    imageUrl:
                                        'assets/images/wallpaper_twelve.png',
                                    title: 'Nature 6',
                                    buttonText: 'Nature')
                              ],
                            )
                          ],
                        ),
                      ),
                      // DARK OVERLAY
                      if (_showSetupView)
                        Container(
                          width: 611,
                          height: 800,
                          color: const Color.fromARGB(63, 0, 0, 0),
                        ),
                    ],
                  ),
                  // RIGHT COLUMN WITH DYNAMIC CONTENT
                  Container(
                    width: 661,
                    height: 746,
                    padding: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            const Color.fromARGB(0, 255, 255, 255)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: _showSetupView
                        ? SetupView(onCancel: _onCancel)
                        : PreviewView(onSetToWallpaper: _onSetToWallpaper),
                  )
                ],
              ),
            ),
          
        );
  }
  }