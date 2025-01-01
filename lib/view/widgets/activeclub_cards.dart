import 'package:flutter/material.dart';
import 'package:misfits/constants/app_mock_data.dart';
import 'package:misfits/view/widgets/club_card_widget.dart';

class ClubEventCards extends StatelessWidget {
  const ClubEventCards({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Container(
      constraints: BoxConstraints(
        maxHeight: 0.6 * screenWidth, // Constrain the height if necessary
      ),
      child: ListView.builder(
        shrinkWrap: true, // Adjusts the height of the ListView to its children
        physics: const NeverScrollableScrollPhysics(), // Prevents independent scrolling
        itemCount: MockData.clubCardData.length,
        itemBuilder: (BuildContext context, index) {
          final clubData = MockData.clubCardData[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 0.058*screenWidth),
            child: ClubCard(
              imageUrl: clubData['clubImageUrl']!,
              title: clubData['clubTitle']!,
              subtitle: clubData['clubAddress']!,
              icon: clubData['clubReactIcon']!,
              reactCount: clubData['clubReactCount']!,
              date: clubData['clubEventDate']!,
            ),
          );
        },
      ),
    );
  }
}
