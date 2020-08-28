import 'package:flutter/material.dart';
import 'package:lusty_labs/constants.dart';
import 'package:lusty_labs/widgets/top_bar.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            TopBar(
              textTitle: 'Settings',
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 34.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingsButtons(
                      onPressed: () {
                        //do something
                      },
                      text: 'Edit Profile',
                      style: kSettingsButtonsTextStyle),
                  SizedBox(
                    height: 10.0,
                  ),
                  SettingsButtons(
                    onPressed: () {
                      //do something
                    },
                    text: 'App Theme',
                    style: kSettingsButtonsTextStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    height: 2.0,
                    color: Color(0xFFDDDDDD),
                    thickness: 1.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SettingsButtons(
                    onPressed: () {
                      //do something
                    },
                    text: 'Give us Feedback',
                    style: kSettingsButtonsTextStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SettingsButtons(
                    onPressed: () {
                      //do something
                    },
                    text: 'About Lusty Labs',
                    style: kSettingsButtonsTextStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SettingsButtons(
                    onPressed: () {
                      //do something
                    },
                    text: 'Logout   ',
                    style: kSettingsButtonsTextStyle.copyWith(
                      color: Color(0xFFEC4F42),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SettingsButtons extends StatelessWidget {
  const SettingsButtons(
      {@required this.text, @required this.onPressed, @required this.style});
  final String text;
  final Function onPressed;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.white,
      onPressed: onPressed,
      child: Text(
        '$text',
        style: style,
      ),
    );
  }
}
