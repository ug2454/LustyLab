import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lusty_labs/constants.dart';
import 'package:lusty_labs/widgets/messages_list_tile.dart';
import 'package:lusty_labs/widgets/top_bar.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              TopBar(
                textTitle: 'Messages',
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Videos...',
                        hintStyle: kMessageScreenTextStyle,
                        prefixIcon: Icon(
                          FontAwesomeIcons.search,
                          size: 20.0,
                        ),
                        filled: true,
                        fillColor: Color(0xFFF5F5F5),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xFFF4F4F4),
                    thickness: 3.0,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '1 unread message',
                          style: kMessageScreenTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MessagesListTile(
                          title: 'Meliodas Ackerman',
                          subtitle: 'Actually, you got the wrong guy here 😊',
                          profileImageUrl:
                              'https://vignette.wikia.nocookie.net/nanatsu-no-taizai/images/b/b8/Meliodas_Demon_Mark_Anime.png/revision/latest?cb=20200321155445',
                          isMessageSeen: false,
                        ),
                        MessagesListTile(
                          title: 'Warren Buffet',
                          subtitle: 'Can you transfer me some money :)',
                          profileImageUrl:
                              'https://www.biography.com/.image/t_share/MTE5NTU2MzE2MTY4Njg1MDY3/warren-buffett-9230729-1-402.jpg',
                          isMessageSeen: true,
                        ),
                        MessagesListTile(
                          title: 'Bill Gates',
                          subtitle: 'Damn you Bezos :)',
                          profileImageUrl:
                              'https://media.wired.com/photos/5e6c06e613205e0008da2461/1:1/w_1600,h_1600,c_limit/Biz-billgates-950211062.jpg',
                          isMessageSeen: true,
                        ),
                        MessagesListTile(
                          title: 'Bill Gates',
                          subtitle: 'Damn you Bezos :)',
                          profileImageUrl:
                              'https://media.wired.com/photos/5e6c06e613205e0008da2461/1:1/w_1600,h_1600,c_limit/Biz-billgates-950211062.jpg',
                          isMessageSeen: true,
                        ),
                        MessagesListTile(
                          title: 'Bill Gates',
                          subtitle: 'Damn you Bezos :)',
                          profileImageUrl:
                              'https://media.wired.com/photos/5e6c06e613205e0008da2461/1:1/w_1600,h_1600,c_limit/Biz-billgates-950211062.jpg',
                          isMessageSeen: true,
                        ),
                        MessagesListTile(
                          title: 'Bill Gates',
                          subtitle: 'Damn you Bezos :)',
                          profileImageUrl:
                              'https://media.wired.com/photos/5e6c06e613205e0008da2461/1:1/w_1600,h_1600,c_limit/Biz-billgates-950211062.jpg',
                          isMessageSeen: true,
                        ),
                        MessagesListTile(
                          title: 'Bill Gates',
                          subtitle: 'Damn you Bezos :)',
                          profileImageUrl:
                              'https://media.wired.com/photos/5e6c06e613205e0008da2461/1:1/w_1600,h_1600,c_limit/Biz-billgates-950211062.jpg',
                          isMessageSeen: true,
                        ),
                        MessagesListTile(
                          title: 'Bill Gates',
                          subtitle: 'Damn you Bezos :)',
                          profileImageUrl:
                              'https://media.wired.com/photos/5e6c06e613205e0008da2461/1:1/w_1600,h_1600,c_limit/Biz-billgates-950211062.jpg',
                          isMessageSeen: true,
                        ),
                        MessagesListTile(
                          title: 'Bill Gates',
                          subtitle: 'Damn you Bezos :)',
                          profileImageUrl:
                              'https://media.wired.com/photos/5e6c06e613205e0008da2461/1:1/w_1600,h_1600,c_limit/Biz-billgates-950211062.jpg',
                          isMessageSeen: true,
                        ),
                        MessagesListTile(
                          title: 'Bill Gates',
                          subtitle: 'Damn you Bezos :)',
                          profileImageUrl:
                              'https://media.wired.com/photos/5e6c06e613205e0008da2461/1:1/w_1600,h_1600,c_limit/Biz-billgates-950211062.jpg',
                          isMessageSeen: true,
                        ),
                        MessagesListTile(
                          title: 'Bill Gates',
                          subtitle: 'Damn you Bezos :)',
                          profileImageUrl:
                              'https://media.wired.com/photos/5e6c06e613205e0008da2461/1:1/w_1600,h_1600,c_limit/Biz-billgates-950211062.jpg',
                          isMessageSeen: true,
                        ),
                        MessagesListTile(
                          title: 'Bill Gates',
                          subtitle: 'Damn you Bezos :)',
                          profileImageUrl:
                              'https://media.wired.com/photos/5e6c06e613205e0008da2461/1:1/w_1600,h_1600,c_limit/Biz-billgates-950211062.jpg',
                          isMessageSeen: true,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
