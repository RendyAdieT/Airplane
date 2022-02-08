import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottonNavigator(
        {required String imageUrl, required bool isSelected}) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              customBottonNavigator(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              customBottonNavigator(
                imageUrl: 'assets/icon_booking.png',
                isSelected: false,
              ),
              customBottonNavigator(
                imageUrl: 'assets/icon_card.png',
                isSelected: false,
              ),
              customBottonNavigator(
                imageUrl: 'assets/icon_setting.png',
                isSelected: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Text('Main Page'),
          customBottonNavigator(imageUrl: '', isSelected: true),
        ],
      ),
    );
  }
}
