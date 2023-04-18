import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/welcome/welcome_screen.dart';

import '../../widget/header_logo.dart';
import '../../widget/my_header.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const MyHeader(
            height: 535,
            imageUrl: "assets/images/doctor.png",
            child: HeaderLogo(),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [nBackgroundColor, nSecondaryBackgroundColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: Column(
              children: [
                Text(
                  "Booking Apps",
                  style: TextStyle(
                    fontSize: 32,
                    color: nTitleTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consecteur \n'
                  'adipiscing elit, sed diam nomuney nibh euismod ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: nTitleTextColor),
                ),
                Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return WelcomeScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Book Now",
                      style: TextStyle(fontSize: 22),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 32, vertical: 12)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF5063FF)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                  ),
                ),
                Spacer(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
