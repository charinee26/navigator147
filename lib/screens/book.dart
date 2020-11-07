import 'package:flutter/material.dart';
import 'package:navigator/screens/OK.dart';

class Book extends StatefulWidget {
  final String title;
  const Book({Key key, this.title}) : super(key: key);

  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
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
              ? Text("กรุณาเลือกห้อง")
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
            child: Text('ห้อง 1'),
            onPressed: () {
              MaterialPageRoute route = MaterialPageRoute(
                builder: (context) => OK(),
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

          // MyStyle.showwaterfall(),
          FlatButton(
            // height: 50,
            child: Text('ห้อง 2'),
            onPressed: () {
              MaterialPageRoute route = MaterialPageRoute(
                builder: (context) => OK(),
              );
              Navigator.push(context, route);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.blue[300],
            textColor: Colors.white,
          ),
          const Divider(
            color: Colors.black26,
            height: 20,
            thickness: 0,
            indent: 20,
            endIndent: 20,
          ),
          //MyStyle.showcafe(),
          FlatButton(
            // height: 50,
            child: Text('ห้อง 3'),
            onPressed: () {
              MaterialPageRoute route = MaterialPageRoute(
                builder: (context) => OK(),
              );
              Navigator.push(context, route);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.orange[300],
            textColor: Colors.white,
          ),
          const Divider(
            color: Colors.black26,
            height: 20,
            thickness: 0,
            indent: 20,
            endIndent: 20,
          ),
          // MyStyle.showsea(),
          // FlatButton(
          //   // height: 50,
          //   child: Text('wsea'),
          //   onPressed: () {},
          //   shape:
          //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          //   color: Colors.purple[200],
          //   textColor: Colors.white,
          // ),
          // const Divider(
          //   color: Colors.black26,
          //   height: 20,
          //   thickness: 0,
          //   indent: 20,
          //   endIndent: 20,
          // ),
        ],
      ),
    );
  }
}
