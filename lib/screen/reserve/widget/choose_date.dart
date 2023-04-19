import 'package:flutter/material.dart';

import '../../../constant.dart';

class ChooseDate extends StatelessWidget {
  final String week;
  final String date;
  final bool check;
  const ChooseDate({
    super.key,
    required this.week,
    required this.date,
    this.check = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          week,
          style: TextStyle(
            color: nTitleTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 6),
        Container(
          width: 48,
          height: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: check ? nYellowColor : Colors.transparent,
            border: Border.all(
              color: check ? nYellowColor : nTitleTextColor,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(36),
          ),
          child: Text(
            date,
            style: TextStyle(
              color: check ? Colors.white : nTitleTextColor,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
