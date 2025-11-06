import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_wallpaper/widgets/setup_widgets/setting_card.dart';
import 'package:live_wallpaper/widgets/setup_widgets/radio_option.dart';
import 'package:live_wallpaper/widgets/setup_widgets/switch_card.dart';
import 'package:live_wallpaper/widgets/setup_widgets/checkbox_option.dart';

class SetupView extends StatelessWidget {
  final VoidCallback onCancel;
  final Function(String category, String selection, String imageUrl)? onSaveSettings;
  
  // Add parameters to store current wallpaper info
  final String? category;
  final String? selection;
  final String? imageUrl;

  const SetupView({
    super.key,
    required this.onCancel,
    this.onSaveSettings,
    this.category,
    this.selection,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wallpaper Setup',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Configure your wallpaper settings and enable auto-rotation',
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 40),
          SettingCard(
            title: 'Activate Wallpaper',
            subtitle: 'Set the selected wallpaper as your desktop background',
            trailing: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFC8FFBD),
                borderRadius: BorderRadius.circular(38),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.check_circle,
                      color: const Color(0xFF1BA400), size: 18),
                  SizedBox(width: 6),
                  Text(
                    'Activated',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF1BA400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          Text(
            'Display mode',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 16),
          RadioOption(
            title: 'Fit',
            subtitle: 'Scale to fit without cropping',
            selected: true,
          ),
          RadioOption(
            title: 'Fill',
            subtitle: 'Scale to fill the entire screen',
            selected: false,
          ),
          RadioOption(
            title: 'Stretch',
            subtitle: 'Stretch to fill the screen',
            selected: false,
          ),
          RadioOption(
            title: 'Tile',
            subtitle: 'Repeat the image to fill the screen',
            selected: false,
          ),
          SizedBox(height: 24),
          SwitchCard(
            title: 'Auto - Rotation',
            subtitle: 'Automatically change your wallpaper at regular intervals',
            value: true,
            onChanged: (val) {},
          ),
          SizedBox(height: 24),
          Text(
            'Advanced Settings',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 16),
          CheckboxOption(
            title: 'Lock Wallpaper',
            subtitle: 'Prevent accidental changes',
            checked: true,
          ),
          CheckboxOption(
            title: 'Sync Across Devices',
            subtitle: 'Keep wallpaper consistent on all devices',
            checked: false,
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: onCancel,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(140, 50),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                    side: BorderSide(color: const Color(0xDFDFDFDF), width: 1),
                  ),
                ),
                child: Text(
                  'Cancel',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(160, 50),
                  backgroundColor: const Color(0xFFFBB03B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
                child: Text(
                  'Save Settings',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}