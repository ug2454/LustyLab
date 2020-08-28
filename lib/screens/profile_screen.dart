import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lusty_labs/constants.dart';
import 'package:lusty_labs/widgets/top_bar.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String text =
      'Hello there, I am Meliodas Ackerman and you must be thinking that how can a character from Seven Deadly Sins can Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
  String firstHalf;
  String secondHalf;

  bool flag = true;
  String name = 'Meliodas Ackerman';
  final profileImageUrl =
      'https://vignette.wikia.nocookie.net/nanatsu-no-taizai/images/b/b8/Meliodas_Demon_Mark_Anime.png/revision/latest?cb=20200321155445';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (text.length > 150) {
      firstHalf = text.substring(0, 150);
      secondHalf = text.substring(150, text.length);
    } else {
      firstHalf = text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              TopBar(
                textTitle: 'Profile',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 150.0,
                      width: 150.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            '$profileImageUrl',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      '$name',
                      style: kPageTitleTextStyle.copyWith(fontSize: 20.0),
                    ),
                    Text(
                      '2K Subscribers, 33K Views',
                      style: TextStyle(
                          color: Color(0xFF959595),
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RaisedButton(
                            color: Color(0xFF709ADF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'SUBSCRIBE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(
                                height: 24.0,
                                width: 24.0,
                                fit: BoxFit.contain,
                                image: NetworkImage(
                                    'https://i.pinimg.com/originals/99/f0/3f/99f03fdee90d871d3d1e718c82feb8be.png'),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.share),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      child: secondHalf.isEmpty
                          ? Text(
                              firstHalf,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF6A6A6A),
                              ),
                            )
                          : Column(
                              children: [
                                Text(
                                  flag
                                      ? (firstHalf + '...,')
                                      : (firstHalf + secondHalf),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF6A6A6A),
                                  ),
                                ),
                                InkWell(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        flag ? 'more' : 'less',
                                        style: TextStyle(color: Colors.blue),
                                      )
                                    ],
                                  ),
                                  onTap: () {
                                    setState(() {
                                      flag = !flag;
                                    });
                                  },
                                )
                              ],
                            ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Videos (33)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Color(0xFFCCCCCC),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          VideoList(
                            imageUrl:
                                'https://www.narutoslugfestm.com/templates/narutoslugfest/images/naruto-leaves.png',
                            subTitle: '23mins',
                            textTitle:
                                'How to create an Anime Character in Adobe Photoshop',
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          VideoList(
                            imageUrl:
                                'https://cdn.nationeditions.com/wp-content/uploads/2020/07/a2-1-696x391.jpg',
                            subTitle: '2secs',
                            textTitle: 'No Game No Life No Second?',
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          VideoList(
                            imageUrl:
                                'https://cdn.nationeditions.com/wp-content/uploads/2020/07/a2-1-696x391.jpg',
                            subTitle: '23mins',
                            textTitle:
                                'Learn to create Facet in Adobe Illustrator',
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          VideoList(
                            imageUrl:
                                'https://cdn.nationeditions.com/wp-content/uploads/2020/07/a2-1-696x391.jpg',
                            subTitle: '23mins',
                            textTitle:
                                'Learn to create Facet in Adobe Illustrator',
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          VideoList(
                            imageUrl:
                                'https://cdn.nationeditions.com/wp-content/uploads/2020/07/a2-1-696x391.jpg',
                            subTitle: '23mins',
                            textTitle:
                                'Learn to create Facet in Adobe Illustrator',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VideoList extends StatelessWidget {
  const VideoList(
      {@required this.textTitle,
      @required this.subTitle,
      @required this.imageUrl});
  final String textTitle;
  final String subTitle;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Color(0xFFDDDDDD),
        ),
      ),
      child: ListTile(
        title: Text(
          textTitle,
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(color: Color(0xFFB2B2B2), fontFamily: 'Poppins'),
        ),
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 44,
            minHeight: 44,
            maxWidth: 50,
            maxHeight: 50,
          ),
          child: Image(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
