import 'package:flutter/material.dart';
import 'package:lusty_labs/constants.dart';

class TopBar extends StatelessWidget {
  final String textTitle;

  const TopBar({@required this.textTitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              //do something
            },
            child: Container(
              height: 50,
              width: 50,
              child: new Card(
                color: Colors.white,
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 2.0,
                child: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          Text(
            '$textTitle',
            style: kPageTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
