
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviewView extends StatelessWidget {
  final VoidCallback onSetToWallpaper;

  const PreviewView({
    super.key,
    required this.onSetToWallpaper,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 279,
              height: 459,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Preview',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: GoogleFonts.poppins(
                            color: const Color(0x80808080),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Nature 1',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tags',
                        style: GoogleFonts.poppins(
                            color: const Color(0x80808080),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 279,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildTag('Nature'),
                            _buildTag('Ambience'),
                            _buildTag('Flowers'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: GoogleFonts.poppins(
                            color: const Color(0x80808080),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            Colors.black,
                            const Color.fromARGB(62, 0, 0, 0)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                        child: Text(
                            'Discover the pure beauty of "Natural Essence" – your gateway to authentic, nature-inspired experiences. Let this unique collection elevate your senses and connect you with the unrefined ele....',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 279,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _buildIconButton(Icons.ios_share),
                        SizedBox(width: 12),
                        _buildIconButtonWithImage(),
                        SizedBox(width: 12),
                        _buildIconButton(Icons.settings_outlined),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/setup_frame.png',
              width: 258.04,
              height: 524.99,
            )
          ],
        ),
        SizedBox(
          width: 581,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: const Color(0xF8F8F8F8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21),
                          side: BorderSide(
                              color: const Color(0xDFDFDFDF), width: 1))),
                  icon: Icon(
                    Icons.favorite_outline_outlined,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Save to Favourites',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Colors.black),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: onSetToWallpaper,
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: const Color(0xFFFBB03B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21))),
                  child: Text(
                    'Set to Wallpaper',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(191, 191, 191, 0.214),
          borderRadius: BorderRadius.circular(24)),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),
      ),
    );
  }

  Widget _buildIconButton(IconData icon) {
    return Container(
      padding: EdgeInsets.all(6.53),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: const Color.fromARGB(27, 124, 124, 124),
          borderRadius: BorderRadius.circular(11),
          border: Border.all(width: 0.5, color: const Color(0xE5E5E5E5))),
      child: Icon(
        icon,
        size: 24,
        color: const Color(0x80808080),
      ),
    );
  }

  Widget _buildIconButtonWithImage() {
    return Container(
        padding: EdgeInsets.all(10),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: const Color.fromARGB(27, 124, 124, 124),
            borderRadius: BorderRadius.circular(11),
            border: Border.all(width: 0.5, color: const Color(0xE5E5E5E5))),
        child: Image.asset(
          'assets/icons/hide.png',
          width: 2,
          color: const Color.fromARGB(65, 0, 0, 0),
        ));
  }
}