import 'package:flutter/material.dart';
import 'package:misfits/constants/app_colors.dart';

class StatsCard extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  final double scale;
  const StatsCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.scale = 1,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      constraints: BoxConstraints(
        maxWidth: screenWidth, // Maximum width
        maxHeight: screenWidth * 0.20 * scale, // Maximum height
      ),
      padding: EdgeInsets.all(0.028* screenWidth * scale),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.024 * screenWidth * scale),
        color: AppColors.greyColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
              child: Text(title,
                  style: TextStyle(
                      fontSize: 0.041 * screenWidth * scale,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center)),
          SizedBox(height: 0.01 * screenWidth * scale),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                  child: Image.asset(
                icon,
                height: 0.058 * screenWidth * scale,
                width: 0.058 * screenWidth * scale,
              )),
              SizedBox(
                width: 0.019 * screenWidth * scale,
              ),
              Flexible(
                child: Text(
                  value,
                  style: TextStyle(
                      fontSize: 0.058 * screenWidth * scale,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
