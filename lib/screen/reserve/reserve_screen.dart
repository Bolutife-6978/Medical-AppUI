import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
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
          )
        ],
      ),
    );
  }
}
