import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/widget/header_logo.dart';
import 'package:flutter_medical/widget/my_header.dart';

import '../../widget/menu_card.dart';
import '../reserve/reserve_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyHeader(
            height: 333,
            imageUrl: "assets/images/welcome.png",
            child: Column(
              children: <Widget>[
                HeaderLogo(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 28,
                    color: nTitleTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consecteur \n'
                  'adipiscing elit, sed diam nomuney nibh euismod ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 36,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [nBackgroundColor, nSecondaryBackgroundColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Our Health\nServices",
                          style: TextStyle(
                            color: nTitleTextColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.menu,
                          color: nSecondaryBackgroundColor,
                          size: 36,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MenuCard(
                        imageUrl: 'assets/images/general_practice.png',
                        title: 'Genreral Practice',
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ReserveScreen();
                          }));
                        },
                      ),
                      MenuCard(
                        imageUrl: 'assets/images/specialist.png',
                        title: 'Specialist',
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MenuCard(
                        imageUrl: 'assets/images/sexual_health.png',
                        title: 'Sexual Health',
                        press: () {},
                      ),
                      MenuCard(
                        imageUrl: 'assets/images/immunisation.png',
                        title: 'Immunisation',
                        press: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
