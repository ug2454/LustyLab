import 'package:flutter/material.dart';
import 'package:lusty_labs/constants.dart';
import 'package:lusty_labs/widgets/top_bar.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            TopBar(
              textTitle: 'Upload',
            ),
            GestureDetector(
              onTap: () {
                //tap to upload video
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    DottedBorder(
                      dashPattern: [4, 4],
                      borderType: BorderType.RRect,
                      radius: Radius.circular(10.0),
                      color: Color(0xFFBDBDBD),
                      child: Container(
                        height: 200.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFFAFAFA),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Color(0xFF999999),
                                size: 70.0,
                              ),
                              Text(
                                'Tap to add a video',
                                style: kSettingsButtonsTextStyle.copyWith(
                                  color: Color(0xFFB7B7B7),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Name'),
                            Text('0/100'),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'eg: How to create a drone'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
