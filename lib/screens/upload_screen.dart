import 'package:flutter/material.dart';
import 'package:lusty_labs/constants.dart';
import 'package:lusty_labs/widgets/top_bar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class UploadScreen extends StatefulWidget {
  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    final maxLines = 5;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
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
                                      fontFamily: 'Poppins'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 7.0,
                              ),
                              Text(
                                'Name',
                                style: TextStyle(
                                    color: Color(0xFFACACAC),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                              ),
                              SizedBox(
                                width: 280.0,
                              ),
                              Expanded(
                                child: Text(
                                  '0/100',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: Color(0xFFACACAC),
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                            ],
                          ),
                          TextField(
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: 'eg: How to create a drone',
                              hintStyle: TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontFamily: 'Poppins'),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFedebeb),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 27.0,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 7.0,
                          ),
                          Text(
                            'Description',
                            style: TextStyle(
                                color: Color(0xFFACACAC),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            width: 220.0,
                          ),
                          Expanded(
                            child: Text(
                              '0/2000',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Color(0xFFACACAC),
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // margin: EdgeInsets.all(12.0),
                        height: maxLines * 24.0,
                        child: TextField(
                          maxLines: maxLines,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            hintText: 'Write video description...',
                            hintStyle: TextStyle(
                                color: Color(0xFFACACAC),
                                fontFamily: 'Poppins'),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFedebeb),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 1.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                child: Checkbox(
                                  value: checkBoxValue,
                                  activeColor: Colors.blue,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      checkBoxValue = newValue;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Text(
                                'Allow comments',
                                style: TextStyle(
                                    color: Color(0xFF555555),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 90.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        child: RaisedButton(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            color: Color(0xFFBDBDBD),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {
                              //upload video button
                            },
                            child: Text(
                              'UPLOAD VIDEO',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
