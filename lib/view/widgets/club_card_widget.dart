import 'package:flutter/material.dart';
import 'package:misfits/constants/app_colors.dart';
import 'package:misfits/view/widgets/state_card.dart';


class ClubCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String icon;
  final String reactCount;
  final String date;


  const ClubCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.reactCount,
    required this.date
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    // 4% of screen width
    final blurRadius1 = screenWidth * 0.01; // Blur radius for first shadow
    final blurRadius2 = screenWidth * 0.015; // Blur radius for second shadow
    final spreadRadius1 = screenWidth * -0.005; // Spread radius for first shadow
    final spreadRadius2 = screenWidth * -0.01; // Spread radius for second shadow
    return Container(
      height: 0.53*screenWidth,
      width: screenWidth,

      padding: EdgeInsets.all(0.039*screenWidth),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.borderColor,
          width: 0.00097*screenWidth
        ),
        borderRadius: BorderRadius.circular(0.058*screenWidth),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            offset: Offset(0, screenWidth * 0.02), // 1% of screen width
            blurRadius: blurRadius1,
            spreadRadius: spreadRadius1,
          ),
          BoxShadow(
            color: AppColors.shadowColor,
            offset: Offset(0, screenWidth * 0.007), // 0.5% of screen width
            blurRadius: blurRadius2,
            spreadRadius: spreadRadius2,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Club Image
              ClipRRect(
                borderRadius: BorderRadius.circular(0.019*screenWidth),
                child: Image.asset(
                  imageUrl,
                  width: 0.24*screenWidth,
                  height: 0.24*screenWidth,
                  fit: BoxFit.cover,
                ),
              ),
               SizedBox(width: 0.038*screenWidth),

              // Club Title and Subtitle
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:  TextStyle(
                        fontSize: 0.058*screenWidth,
                        fontWeight: FontWeight.w500,
                        color: AppColors.clubTextColor
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/locIcon.png',
                          height: 0.038*screenWidth,
                          width: 0.038*screenWidth
                        ),
                        SizedBox(width: 0.0097*screenWidth),
                        Text(
                          subtitle,
                          style:  TextStyle(
                            fontSize: 0.033*screenWidth,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 0.030*screenWidth),
          // Meet-ups and Active Since Stats
      Row(

        children: [
           Flexible(child: StatsCard(title: 'Meet-ups attended',scale: 0.9, value: reactCount , icon: icon)),
          SizedBox(width: 0.029*screenWidth),
           Flexible(child: StatsCard(title: 'Active Since', scale: 0.9 , value: date, icon: 'assets/images/Calendar.png')),
        ],
      )
        ],
      ),
    );
  }
}
