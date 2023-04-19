import 'package:flutter/material.dart';
import 'package:flutter_medical/model/choose_model.dart';

import '../../../constant.dart';
import 'choose_time.dart';

class ChooseTimeGroup extends StatelessWidget {
  final String title;
  final List<ChooseModel> list;
  const ChooseTimeGroup({
    super.key,
    required this.title,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Morning",
          style: TextStyle(
            fontSize: 18,
            color: nTitleTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Wrap(
          runSpacing: 12,
          spacing: 12,
          children: buildItem(),
        )
      ],
    );
  }

  List<Widget> buildItem() {
    List<Widget> widgets = [];
    {
      for (ChooseModel item in list) {
        widgets.add(ChooseTime(
          time: item.time,
          check: item.check,
        ));
      }
      return widgets;
    }
  }
}
