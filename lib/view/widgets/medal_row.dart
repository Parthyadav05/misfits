import 'package:flutter/material.dart';
import 'package:misfits/constants/app_mock_data.dart';
import 'bottom_modalsheet.dart';

class MedalRowWidget extends StatelessWidget {
  const MedalRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Container(
      height: 0.19 * screenWidth, // Adjusted height of the container
      margin: EdgeInsets.fromLTRB( 0.22 * screenWidth, 0 ,0.20 * screenWidth , 0 ),
      child: Center(
        child: ListView.builder(
          itemCount: MockData.medalData.length,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
                    final medalInfo = MockData.medalData[index];
                    return CustomBottomSheet(
                      title: medalInfo['medalTitle'] ?? '',
                      description: medalInfo['medalDescription'] ?? '',
                      buttonText: 'Cool!',
                      imagePath: medalInfo['medalUrl'] ?? '',
                      onClose: () => Navigator.of(context).pop(),
                      onButtonClick: () {
                        Navigator.of(context).pop();
                        // Add additional actions here
                      },
                    );
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 0.046 * screenWidth), // Added spacing between columns
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Removed Expanded to let the image control its size
                    Image.asset(
                      MockData.medalData[index]['medalUrl']!,
                      fit: BoxFit.contain,
                      width: 0.13 * screenWidth, // Adjusted width
                      height: 0.13 * screenWidth, // Adjusted height
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.image_not_supported);
                      },
                    ),
                    SizedBox(height: 0.01 * screenWidth), // Space between image and text
                    Text(
                      MockData.medalData[index]['medalTitle']!,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 0.028 * screenWidth, // Adjusted font size
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
