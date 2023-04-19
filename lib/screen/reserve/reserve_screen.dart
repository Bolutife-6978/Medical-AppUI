import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/model/choose_model.dart';
import 'package:flutter_medical/screen/reserve/widget/choose_date.dart';
import 'package:flutter_medical/screen/reserve/widget/choose_time.dart';
import 'package:flutter_medical/screen/reserve/widget/choose_time_group.dart';
import 'package:flutter_medical/screen/reserve/widget/user_info.dart';
import 'package:flutter_medical/widget/my_header.dart';

import 'widget/my_appbar.dart';

class ReserveScreen extends StatelessWidget {
  const ReserveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyHeader(
            height: 258,
            imageUrl: "assets/images/avatar_head.png",
            child: Column(
              children: [
                MyAppbar(),
                SizedBox(
                  height: 16,
                ),
                UserInfo()
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [nBackgroundColor, nSecondaryBackgroundColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChooseSlot(),
                  SizedBox(
                    height: 32,
                  ),
                  ChooseTimeGroup(
                    title: 'Morning',
                    list: [
                      ChooseModel('09.00 AM'),
                      ChooseModel('09.30 AM', check: true),
                      ChooseModel('10.30 AM'),
                      ChooseModel('11.00 AM'),
                      ChooseModel('11.30 AM'),
                      ChooseModel('12.00 AM'),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  ChooseTimeGroup(
                    title: 'Afternoon',
                    list: [
                      ChooseModel('2.00 PM'),
                      ChooseModel('2.30 PM'),
                      ChooseModel('3.00 PM'),
                      ChooseModel('3.30 PM'),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  ChooseTimeGroup(
                    title: 'Evening',
                    list: [
                      ChooseModel('6.00 PM'),
                      ChooseModel('6.30 PM'),
                      ChooseModel('7.00 PM'),
                      ChooseModel('7.30 PM'),
                      ChooseModel('8.00 PM'),
                      ChooseModel('8.30 PM'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChooseSlot extends StatelessWidget {
  const ChooseSlot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Choose Your Slot",
          style: TextStyle(
            fontSize: 18,
            color: nTitleTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ChooseDate(
              week: 'Mon',
              date: '26',
            ),
            ChooseDate(
              week: 'Tue',
              date: '27',
              check: true,
            ),
            ChooseDate(
              week: 'Wed',
              date: '28',
            ),
            ChooseDate(
              week: 'Thu',
              date: '29',
            ),
            ChooseDate(
              week: 'Fri',
              date: '30',
            ),
            ChooseDate(
              week: 'Sat',
              date: '31',
            ),
          ],
        )
      ],
    );
  }
}
