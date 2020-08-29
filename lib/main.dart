import 'package:flutter/material.dart';
import 'package:lusty_labs/screens/login_screen.dart';
import 'package:lusty_labs/screens/messages_Screen.dart';
import 'package:lusty_labs/screens/profile_screen.dart';
import 'package:lusty_labs/screens/settings_screen.dart';
import 'package:lusty_labs/screens/upload_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessagesScreen(),
      // home: ProfileScreen(),
      // home: UploadScreen(),
      // home: SettingsScreen(),
      // home: LoginScreen(),
    );
  }
}
