import 'package:flutter/material.dart';
import 'package:navigator/screens/book.dart';

class OK extends StatefulWidget {
  final String title;
  const OK({Key key, this.title}) : super(key: key);

  @override
  _OKState createState() => _OKState();
}

class _OKState extends State<OK> {
  bool isSearching = false;
  String user;
  String password;
  String name;
  String tel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title:title,
      home: Scaffold(
        appBar: AppBar(
          title: !isSearching
              ? Text("story")
              : TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Search story",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
          actions: <Widget>[
            isSearching
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        this.isSearching = false;
                      });
                    },
                    icon: Icon(Icons.cancel),
                  )
                : IconButton(
                    onPressed: () {
                      setState(() {
                        this.isSearching = true;
                      });
                    },
                    icon: Icon(Icons.search),
                  )
          ],
        ),
        body: MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),

          // MyStyle.showmountain(),
          FlatButton(
            // height: 50,
            child: Text('คุณได้ทำการเลือกห้องเรียบร้อย'),
            onPressed: () {
              MaterialPageRoute route = MaterialPageRoute(
                builder: (context) => Book(),
              );
              Navigator.push(context, route);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.green,
            textColor: Colors.white,
          ),
          const Divider(
            color: Colors.black26,
            height: 20,
            thickness: 0,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
