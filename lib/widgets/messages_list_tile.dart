import 'package:flutter/material.dart';
import 'package:lusty_labs/constants.dart';

class MessagesListTile extends StatelessWidget {
  const MessagesListTile({
    @required this.title,
    @required this.subtitle,
    @required this.profileImageUrl,
    @required this.isMessageSeen,
  });

  final String title;
  final String subtitle;
  final profileImageUrl;
  final bool isMessageSeen;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage(
          profileImageUrl,
        ),
      ),
      title: Text(
        title,
        style: isMessageSeen == true
            ? TextStyle(fontFamily: 'Poppins')
            : TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
      ),
      subtitle: Text(
        subtitle,
        style: kMessageScreenTextStyle.copyWith(fontSize: 12.0),
      ),
    );
  }
}
