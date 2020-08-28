import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lusty_labs/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lusty Labs',
                      style: kPageTitleTextStyle,
                    ),
                    Container(
                      width: 50.0,
                      child: Divider(
                        color: Colors.black,
                        thickness: 4.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        // margin: EdgeInsets.only(left: 50.0),
                        child: SvgPicture.asset('images/Group4.svg'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Text(
                    'Enter the world of smart & efficient video sharing',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.3),
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              GestureDetector(
                onTap: () {
                  //do something
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.white,
                  elevation: 1.0,
                  margin: EdgeInsets.symmetric(horizontal: 70.0),
                  child: ListTile(
                    leading: Image(
                      height: 30.0,
                      width: 30.0,
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1004px-Google_%22G%22_Logo.svg.png',
                      ),
                    ),
                    title: Text(
                      'Continue with Google',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Column(
                    children: [
                      Text(
                        'By signing in you accept our,',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Color(0xFFCBCBCB),
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 10.0,
                                color: Color(0xFFCBCBCB),
                                fontFamily: 'Poppins',
                              ),
                            ),
                            TextSpan(
                              text: ' & ',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xFFCBCBCB),
                                fontFamily: 'Poppins',
                              ),
                            ),
                            TextSpan(
                              text: ' Privacy Policy',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 10.0,
                                color: Color(0xFFCBCBCB),
                                fontFamily: 'Poppins',
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
