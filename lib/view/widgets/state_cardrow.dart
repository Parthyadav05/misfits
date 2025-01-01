import 'package:flutter/material.dart';
import 'package:misfits/view/widgets/state_card.dart';
class CardRow extends StatelessWidget {
  const CardRow({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final spacing = 12 / 412 * screenWidth;
    return   Row(

      children: [
        const Flexible(child: StatsCard(title: 'Meet-ups attended', value: '2', icon: 'assets/images/Happy 1.png')),
        SizedBox(width: spacing),
        const Flexible(child: StatsCard(title: 'Active Since', value: 'Jun 24', icon: 'assets/images/Calendar.png')),
      ],
    );
  }
}
