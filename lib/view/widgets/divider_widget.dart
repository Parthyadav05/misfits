import 'package:flutter/material.dart';
import 'package:misfits/constants/app_colors.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  final double scale;
  const DividerWithText({super.key, required this.text ,this.scale = 1});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.dividerColor, // Color of the line
            thickness: 1,       // Thickness of the line
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.037*screenWidth), // Space around the text
          child: Text(
            text,
            style:  TextStyle(
              fontSize: 0.038*screenWidth*scale,
              fontWeight: FontWeight.w500,
              color: AppColors.sheetTextColor,
            ),
          ),
        ),
         const Expanded(
          child: Divider(
            color: AppColors.dividerColor, // Color of the line
            thickness: 1,       // Thickness of the line
          ),
        ),
      ],
    );
  }
}


