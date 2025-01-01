import 'package:flutter/material.dart';
import 'package:misfits/constants/app_colors.dart';
import 'package:misfits/view/widgets/divider_widget.dart';

class CustomBottomSheet extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final String imagePath;
  final VoidCallback onClose;
  final VoidCallback onButtonClick;

  const CustomBottomSheet({
    Key? key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onClose,
    required this.onButtonClick,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05,
        vertical: screenHeight * 0.02,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.058*screenWidth),
          topRight: Radius.circular(0.058*screenWidth),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Close Button
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: onClose,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          // Icon or Image

            Image.asset(
              imagePath,
              height: screenWidth * 0.31,
              width: screenWidth*0.31,

            ),
          SizedBox(height: screenHeight * 0.02),
          // Title
          DividerWithText(text: title , scale: 2),
          // Divider

          SizedBox(height: screenHeight * 0.02),
          // Description
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth * 0.04,
              color: AppColors.sheetTextColor,
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          // Button
          SizedBox(
            width: screenWidth * 0.9,
            height: screenHeight * 0.06,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:  AppColors.buttonColor, // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.24*screenWidth), // Rounded corners
                ),
              ),
              onPressed: onButtonClick,
              child: Text(
                buttonText,
                style: const TextStyle(color: AppColors.sheetColor),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
        ],
      ),
    );
  }
}
