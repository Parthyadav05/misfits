import 'package:flutter/material.dart';
import 'package:misfits/constants/app_colors.dart';
import 'package:misfits/constants/app_mock_data.dart';
import 'package:misfits/view/widgets/activeclub_cards.dart';
import 'package:misfits/view/widgets/divider_widget.dart';
import 'package:misfits/view/widgets/medal_row.dart';
import 'package:misfits/view/widgets/state_cardrow.dart';

class UserHomepage extends StatefulWidget {
  const UserHomepage({super.key});

  @override
  State<UserHomepage> createState() => _UserHomepageState();
}

class _UserHomepageState extends State<UserHomepage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        minimum:
            EdgeInsets.fromLTRB(0.038 * screenWidth, 0, 0.038 * screenWidth, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            constraints: BoxConstraints(
              minWidth: screenWidth,
              minHeight: screenHeight,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/user.png',
                  height: screenWidth * 0.48,
                  width: screenWidth * 0.48,
                ),
                SizedBox(
                  height: 0.057* screenWidth,
                ),
                Text(
                  'Komal Pandey',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 0.067 * screenWidth),
                ),
                SizedBox(
                  height: 0.038 * screenWidth,
                ),
                const MedalRowWidget(),
                SizedBox(
                  height: 0.038 * screenWidth,
                ),
                Text(
                  MockData.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 0.038 * screenWidth),
                ),
                SizedBox(
                  height: 0.058 * screenWidth,
                ),
                const CardRow(),
                SizedBox(
                  height: 0.058 * screenWidth,
                ),
                const DividerWithText(text: 'Their Active Clubs'),
                SizedBox(
                  height: 0.058 * screenWidth,
                ),
                SizedBox(
                  height: screenWidth*1.15, // Set a fixed height
                  child: const ClubEventCards(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
