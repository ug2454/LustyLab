import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 250.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Container(
            color: Colors.blue,
            child: TabBar(
              controller: _controller,
              tabs: [
                Tab(
                  text: 'Photos',
                ),
                Tab(
                  text: 'Closet',
                ),
                Tab(
                  text: 'Outfits for me',
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            child: TabBarView(
              controller: _controller,
              children: [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: TextField(
                      decoration:
                          InputDecoration(hintText: 'Search for photos...'),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: TextField(
                      decoration:
                          InputDecoration(hintText: 'Search for closet...'),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search for outfits of me...'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
